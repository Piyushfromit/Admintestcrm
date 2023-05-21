package com.spring.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.NewsArticle;

@Repository
public interface NewsArticleRepository extends JpaRepository<NewsArticle, Integer> {

}
