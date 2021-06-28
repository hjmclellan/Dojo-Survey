package com.hmclellan.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@SpringBootApplication
@Controller
public class DojosurveyApplication {

	public static void main(String[] args) {
		SpringApplication.run(DojosurveyApplication.class, args);
	}
	
	@RequestMapping("/")
	public String form() {
		return "form.jsp";
	}
	
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String submit(@RequestParam(value="name") String name, @RequestParam(value="location") String location,
	@RequestParam(value="language") String language, @RequestParam(value="comment") String comment, HttpSession session) {
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		return "redirect:/show";
	}
	
	@RequestMapping("/show")
	public String show(Model model, HttpSession session) {
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("location", session.getAttribute("location"));
		model.addAttribute("language", session.getAttribute("language"));
		model.addAttribute("comment", session.getAttribute("comment"));
		return "show.jsp";
	}

}