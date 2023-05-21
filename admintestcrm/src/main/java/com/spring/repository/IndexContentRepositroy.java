package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.IndexContent;

@Repository
public interface IndexContentRepositroy extends JpaRepository<IndexContent, Integer>{

}
