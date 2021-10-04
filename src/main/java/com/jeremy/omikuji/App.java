package com.jeremy.omikuji;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeremy.omikuji.App;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.*;

import javax.servlet.http.HttpSession;
@SpringBootApplication
@Controller
public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 SpringApplication.run(App.class, args);

	}
	
    @RequestMapping("/")
    public String index(HttpSession session) {
        return "form.jsp";
    }
    @RequestMapping(value="/formAction", method=RequestMethod.POST)
    public String formAction(HttpSession session,
    		@RequestParam(value="number") String number,
    		@RequestParam(value="city") String city,
    		@RequestParam(value="person") String person,
    		@RequestParam(value="hobby") String hobby,
    		@RequestParam(value="creature") String creature,
    		@RequestParam(value="nice") String nice) 
    {
    	session.setAttribute("number", number);
    	session.setAttribute("city", city);
    	session.setAttribute("person", person);
    	session.setAttribute("hobby", hobby);
    	session.setAttribute("creature", creature);
    	session.setAttribute("nice", nice);
    	
    	
    	return "redirect:/dashboard";
    }
    @RequestMapping("/dashboard")
    public String dashboard(HttpSession session , Model model) {
    	String number = (String) session.getAttribute("number"); 
    	String city =  (String) session.getAttribute("city");
    	String person = (String) session.getAttribute("person");
    	String hobby = (String) session.getAttribute("hobby");
    	String creature =  (String) session.getAttribute("creature");
    	String nice = (String) session.getAttribute("nice");
    	model.addAttribute("number", number);
    	model.addAttribute("city", city);
    	model.addAttribute("person", person);
    	model.addAttribute("hobby", hobby);
    	model.addAttribute("creature", creature);
    	model.addAttribute("nice", nice);
 
    	return "dashboard.jsp";
    }
    

    
    


    //

}
