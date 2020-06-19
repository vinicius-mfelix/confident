package com.confident.confident.domain.controller;

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

import com.confident.confident.domain.model.Segment;
import com.confident.confident.domain.repository.BotRepository;
import com.confident.confident.domain.repository.SegmentRepository;
import com.confident.confident.domain.service.SegmentService;

@Controller
@RequestMapping("/segments")
public class SegmentController {
	
	@Autowired
	private BotRepository botRepository;

	@Autowired
	private SegmentRepository segmentRepository;
	
	@Autowired
	private SegmentService segmentService;
	
	@GetMapping
	public String index(Model model) {
		model.addAttribute("segments", segmentRepository.findAll());
		return "segments";
	}
	
	@GetMapping("/{id}")
	public String show(@PathVariable Long id, Model model) {
		model.addAttribute("segment", segmentRepository.findByIdCustom(id));
		return "show-segment";
	}
	
	@GetMapping("/form")
	public String form(@RequestParam String page,
			@RequestParam(required = false) Long id,
			@ModelAttribute("segmentModel") Segment segment,
			Model model
			) {
		
		if("edit-segment".equals(page)) {
			model.addAttribute("segmentModel", segmentRepository.findByIdCustom(id));
		}
		
		model.addAttribute("bots", botRepository.findAll());
		
		return page;
	}
	
	@PostMapping
	public String store(@ModelAttribute("segmentModel") @Valid Segment segment, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("bots", botRepository.findAll());
			return "new-segment";
		}
		
		segmentService.store(segment);
		redirectAttributes.addFlashAttribute("message", "Segment created successfully!");
		
		return "redirect:/segments";
		
	}
	
	@PutMapping("/{id}")
	public String update(@ModelAttribute("segmentModel") @Valid Segment segment, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("bots", botRepository.findAll());
			return "edit-segment";
		}
		
		segmentService.store(segment);
		redirectAttributes.addFlashAttribute("message", "Segment updated successfully!");
		
		return "redirect:/segments";
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		segmentRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("message", "Segment deleted successfully!");
		return "redirect:/segments";
	}
	
}
