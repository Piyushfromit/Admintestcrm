package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.FaqsContent;

@Repository
public interface FaqsContentRepository extends JpaRepository<FaqsContent, Integer>{

}
