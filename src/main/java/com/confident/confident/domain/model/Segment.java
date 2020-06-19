package com.confident.confident.domain.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "tb_segment")
public class Segment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="SEG_SEQ")
	@SequenceGenerator(sequenceName = "segment_seq", allocationSize = 1, name="SEG_SEQ")
	private Long id;
	
	@NotBlank(message = "The segment cannot have an blank name! Please input a valid name")	
	@Column(nullable = false)
	private String name;
	
	@ManyToOne
	@JoinColumn(nullable = true)
	private Bot bot;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Bot getBot() {
		return bot;
	}

	public void setBot(Bot bot) {
		this.bot = bot;
	}

}
