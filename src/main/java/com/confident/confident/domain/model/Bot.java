package com.confident.confident.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "tb_bot")
public class Bot {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="BOT_SEQ")
	@SequenceGenerator(sequenceName = "bot_seq", allocationSize = 1, name="BOT_SEQ")
	private Long id;
	
	@NotBlank(message = "The bot's name cannot be blank!")
	private String name;
	
	@NotBlank(message = "The bot's welcome message cannot be blank! Please input an name")
	private String welcomeMsg;
	
	@NotBlank(message = "The bot's farewell message cannot be blank! Please input an welcome message")
	private String farewellMsg;

	@Min(value = 1, message = "The bot's downtime cannot be less than one second! Please input a value bigger than 1")
	@NotNull(message = "The bot's downtime cannot be null! Please insert a value")
	private Integer downtime;
	
	@NotBlank(message = "The bot's default answer cannot be blank! Please input an default answer")
	private String defaultAnswer;
	
	@OneToMany(mappedBy = "bot")
	private List<Segment> segments;

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

	public String getWelcomeMsg() {
		return welcomeMsg;
	}

	public void setWelcomeMsg(String welcomeMsg) {
		this.welcomeMsg = welcomeMsg;
	}

	public String getFarewellMsg() {
		return farewellMsg;
	}

	public void setFarewellMsg(String farewellMsg) {
		this.farewellMsg = farewellMsg;
	}

	public Integer getDowntime() {
		return downtime;
	}

	public void setDowntime(Integer downtime) {
		this.downtime = downtime;
	}

	public String getDefaultAnswer() {
		return defaultAnswer;
	}

	public void setDefaultAnswer(String defaultAnswer) {
		this.defaultAnswer = defaultAnswer;
	}

	public List<Segment> getSegments() {
		return segments;
	}

	public void setSegments(List<Segment> segments) {
		this.segments = segments;
	}
	
}
