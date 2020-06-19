package com.confident.confident.domain.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.confident.confident.domain.model.Segment;

public interface SegmentRepository extends JpaRepository<Segment, Long>{
	
	@Query("FROM Segment WHERE id = :id")
	Segment findByIdCustom(@Param("id") Long id);
	
	@Query("FROM Segment WHERE bot_id = :id")
	List<Segment> searchSegmentForBot(@Param("id") Long id);

}
