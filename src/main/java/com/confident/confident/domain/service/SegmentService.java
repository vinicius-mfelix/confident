package com.confident.confident.domain.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.confident.confident.domain.model.Segment;
import com.confident.confident.domain.repository.SegmentRepository;

@Service
public class SegmentService {

	@Autowired
	private SegmentRepository segmentRepository;

	public Segment store(Segment segment) {
		return segmentRepository.save(segment);
	}
}
