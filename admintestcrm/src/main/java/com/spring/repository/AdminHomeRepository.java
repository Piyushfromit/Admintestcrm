package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.HomeContent;

@Repository
public interface AdminHomeRepository extends JpaRepository<HomeContent, Integer> {

}
