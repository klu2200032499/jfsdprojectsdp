package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.BlogPost;
import com.klef.jfsd.springboot.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogPostRepository extends JpaRepository<BlogPost, Long> {
    List<BlogPost> findByNutritionFocus(String nutritionFocus);
    List<BlogPost> findByAuthor(User author);
    List<BlogPost> findByTitleContainingIgnoreCase(String keyword);
}
