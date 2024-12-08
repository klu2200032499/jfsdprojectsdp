package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Nutritionist;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.NutritionistService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class NutritionistController 
{
    @Autowired
    private NutritionistService nutritionistService;
    
    @Autowired 
    private AdminService adminservice;
    
    @GetMapping("nutritionistlogin")
    public ModelAndView nutritionistlogin() {
        ModelAndView mv = new ModelAndView("nutritionistlogin");  // JSP page to be rendered
        mv.addObject("nutritionistlogin", new Nutritionist());  // Add an empty User object to the model
        return mv;
    }
    
    @GetMapping("nutritionisthome")
    public ModelAndView nutritionisthome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("nutritionisthome");
        return mv;
    }
    
    @PostMapping("nutritionistlogin")
    public String nutritionistLogin(@RequestParam String email, @RequestParam String password, Model model) {
        Nutritionist nutritionist = nutritionistService.authenticate(email, password);

        if (nutritionist != null) {
            // Login successful, redirect to dashboard
            return "redirect:/nutritionisthome";
        } else {
            // Login failed, show error
            model.addAttribute("error", "Invalid email or password");
            return "nutritionistlogin";
        }
    }
    
    @GetMapping("viewassignedusers")
    public ModelAndView viewAssignedUsers(@RequestParam("nid") int nid) 
    {
        ModelAndView mv = new ModelAndView("viewassignedusers");
        List<User> userList = nutritionistService.getAssignedUsers(nid);
        mv.addObject("userList", userList);
        return mv;
    }
    
    @GetMapping("analyzeuser")
    public ModelAndView analyzeUser(@RequestParam("uid") int uid) 
    {
        ModelAndView mv = new ModelAndView("analyzeuser");
        User user = nutritionistService.getUserDetails(uid);
        String recommendation = nutritionistService.analyzeUserHealth(user);
        mv.addObject("user", user);
        mv.addObject("recommendation", recommendation);
        return mv;
    }

    @GetMapping("createblog")
    public ModelAndView createBlog() {
        ModelAndView mv = new ModelAndView("createblog");
//        mv.addObject("command", new Blog()]); // Add a "command" object (or use the form model attribute name expected in JSP)
        return mv;
    }

//    @PostMapping("/saveBlog")
//    public String saveBlog(@RequestParam("title") String title, @RequestParam("content") String content, HttpSession session) {
//        Nutritionist nutritionist = (Nutritionist) session.getAttribute("loggedInNutritionist");
//        blogService.saveBlog(title, content, nutritionist.getId());
//        return "redirect:/viewblogs";
//    }


    @PostMapping("submitblog")
    public ModelAndView submitBlog(@ModelAttribute("nutritionist") Nutritionist n, @RequestParam("blogContent") String blogContent) 
    {
        String msg = nutritionistService.saveBlogContent(n.getId(), blogContent);
        ModelAndView mv = new ModelAndView("blogsuccess");
        mv.addObject("message", msg);
        return mv;
    }

    @GetMapping("sendhealthalerts")
    public ModelAndView sendHealthAlerts(@RequestParam("uid") int uid, @RequestParam("alert") String alert) 
    {
        nutritionistService.sendHealthAlert(uid, alert);
        return new ModelAndView("alertsuccess");
    }

    @PostMapping("updateuserhealth")
    public ModelAndView updateUserHealth(@RequestParam("uid") int uid, @RequestParam("healthStatus") String healthStatus) 
    {
        String msg = nutritionistService.updateUserHealth(uid, healthStatus);
        ModelAndView mv = new ModelAndView("updatehealthsuccess");
        mv.addObject("message", msg);
        return mv;
    }
    @GetMapping("registernutritionist")
    public String registernutritionist(Model model) {
    	model.addAttribute("nutritionist", new Nutritionist());
    	return "registernutritionist";
    }
    @PostMapping("registernutritionist")
    public String registernutritionist(@ModelAttribute("nutritionist") Nutritionist nutritionist, Model model) {
        String message = nutritionistService.registernutritionist(nutritionist);
        model.addAttribute("message", message);
        return "redirect:/nutritionistlogin";
    }
//    @GetMapping("recommendations")
//    public ModelAndView viewallrecomdations() {
//        ModelAndView mv = new ModelAndView();
//        List<User> userlist = adminservice.ViewAllUsers();
//        mv.setViewName("viewallusers");
//        mv.addObject("userlist", userlist);
//        
//        long count = adminservice.usercount();
//        mv.addObject("usercount", count);
//        return mv;
//    }
//    @GetMapping("recommendations")
//    public ModelAndView viewallrecomdations() {
//    	List<User> users = adminservice.ViewAllUsers();
//        ModelAndView mv = new ModelAndView("recommendations");
//        mv.addObject("recommendationList", users);
//        mv.addObject("recommendationsCount", users.size());
//        return mv;
//    }
    @GetMapping("recommendations")
    public ModelAndView viewallrecomdations() {
        ModelAndView mv = new ModelAndView();
        List<User> recommendations = adminservice.ViewAllUsers();
        mv.setViewName("recommendations");
        mv.addObject("recommendationList", recommendations);
        
        long count = adminservice.usercount();
        mv.addObject("userCount", count);
        return mv;
    }
    
    @GetMapping("nutrionistprofile")
    public ModelAndView nutrionistprofile() {
        return new ModelAndView("nutrionistprofile");
    }
    
//    @PostMapping("updatenutrionistrprofile")
//    public ModelAndView updatenutrionistprofile(HttpServletRequest request)
//    {
//      ModelAndView mv = new ModelAndView();
//      
//     try
//     {
//         int id = Integer.parseInt(request.getParameter("eid"));
//         String name = request.getParameter("ename");
//       String gender = request.getParameter("egender");
//       String dob = request.getParameter("edob");
//       String dept = request.getParameter("edept");
//       double salary = Double.parseDouble(request.getParameter("esalary"));
//       String password = request.getParameter("epwd");
//       String location = request.getParameter("elocation");
//       String contact = request.getParameter("econtact");
//       
//         User user = new User();
//         user.setId(id);
//         user.setName(name);
//         user.setGender(gender);
////         user.setDepartment(dept);
////         user.setDateofbirth(dob);
////         user.setSalary(salary);
//         user.setPassword(password);
//         user.setLocation(location);
//         user.setContact(contact);
//         
//         String msg = userService.updateUserProfile(user);
//         
//         User e = userService.displayUserbyID(id);
//         
//          HttpSession session = request.getSession();
//          session.setAttribute("employee",e); //employee is session variable
//        
//        
//         mv.setViewName("updatesuccess");
//         mv.addObject("message", msg);
//       
//     }
//     catch(Exception e)
//     {
//       mv.setViewName("updateerror");
//       mv.addObject("message", e);
//     }
//       return mv;
//    }

//    @GetMapping("updatenutrionist")
//    public ModelAndView updateUser() {
//        return new ModelAndView("updatenutrionist");
//    }
    @GetMapping("logout")
    public ModelAndView userlogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user");  // Removes the specific attribute only

        ModelAndView mv = new ModelAndView();
        mv.setViewName("nutritionistlogin");  // Redirect to the login page after logout
        return mv;
    }
    
    
    
}
