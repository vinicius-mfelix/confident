package com.confident.confident.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.confident.confident.domain.model.Bot;

public interface BotRepository extends JpaRepository<Bot, Long>{
	
	@Query("FROM Bot WHERE id = :id")
	Bot findByIdCustom(@Param("id") Long id);

}
