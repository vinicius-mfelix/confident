package com.confident.confident.domain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.confident.confident.domain.model.Bot;
import com.confident.confident.domain.repository.BotRepository;

@Service
public class BotService {

	@Autowired
	private BotRepository botRepository;
	
	public Bot store(Bot bot) {
		return botRepository.save(bot);
	}
	
	public void destroy(Long id) {
		botRepository.deleteById(id);
	}
}
