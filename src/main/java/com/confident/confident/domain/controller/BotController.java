package com.confident.confident.domain.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.confident.confident.domain.model.Bot;
import com.confident.confident.domain.repository.BotRepository;
import com.confident.confident.domain.repository.SegmentRepository;
import com.confident.confident.domain.service.BotService;

@Controller
@RequestMapping("/bots")
public class BotController {
	
	@Autowired
	private BotRepository botRepository;
	
	@Autowired
	private BotService botService;
	
	@Autowired
	private SegmentRepository segmentRepository;
	
	@GetMapping
	public String index(Model model) {
		List<Bot> bots = botRepository.findAll();
		for (Bot bot : bots) {
			bot.setSegments(segmentRepository.searchSegmentForBot(bot.getId()));
		}
		model.addAttribute("bots", bots);
		return "bots";
	}
	
	@GetMapping("/{id}")
	public String show(@PathVariable Long id, Model model) {
		Bot bot = botRepository.findByIdCustom(id);
		bot.setSegments(segmentRepository.searchSegmentForBot(id));
		model.addAttribute("bot", bot);
		return "show-bot";
	}
	
	@GetMapping("/form")
	public String form(@RequestParam String page,
			@ModelAttribute("botModel") Bot botModel,
			@RequestParam(required = false) Long id,
			Model model) {
		
		System.out.println(page);
		
		if("edit-bot".equals(page)) {
			model.addAttribute("botModel", botRepository.findByIdCustom(id));
		} 
		
		return page;
	}
	
	@PostMapping
	public String store(@ModelAttribute("botModel") @Valid Bot botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "new-bot";
		}
		
		botService.store(botModel);
		redirectAttributes.addFlashAttribute("message", "Bot created successfully!");
		
		return "redirect:/bots";
		
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable Long id,@ModelAttribute("botModel") @Valid Bot botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "edit-bot";
		}
		
		botModel.setId(id);
		botService.store(botModel);
		redirectAttributes.addFlashAttribute("message", "Bot updated successfully!");
		
		return "redirect:/bots";
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		botService.destroy(id);
		redirectAttributes.addFlashAttribute("message", "Bot deleted successfully!");
		return "redirect:/bots";
	}

}
