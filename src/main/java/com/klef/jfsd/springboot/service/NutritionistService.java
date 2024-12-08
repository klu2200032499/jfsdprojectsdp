package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Nutritionist;
import com.klef.jfsd.springboot.model.User;

import jakarta.servlet.http.HttpSession;

public interface NutritionistService {

    public List<User> getAssignedUsers(int nid);

    public User getUserDetails(int uid);

    public String analyzeUserHealth(User user);

    public String saveBlogContent(int id, String blogContent);

    public void sendHealthAlert(int uid, String alert);

    public String updateUserHealth(int uid, String healthStatus);

    public String registernutritionist(Nutritionist nutritionist);

    public String addnutritionist(Nutritionist nutritionist);

    public List<Nutritionist> getAllNutritionists();

    public void deleteNutritionist(int id);

    public Nutritionist authenticate(String email, String password);
    
    public List<User> recomenadations();
    public String saveBlog(String title,String content, HttpSession session);
    
    public String NutrionistProfile(Nutritionist nutritionist);
    
    public String updateRecommendationStatus(int recommendationId, String status);
}
