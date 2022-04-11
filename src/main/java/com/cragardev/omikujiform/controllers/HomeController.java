package com.cragardev.omikujiform.controllers;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {

		return "index.jsp";
	}

	@RequestMapping("/omikuji")
	public String omikuji() {

		return "omikuji.jsp";
	}

	@PostMapping("/omikuji/process")
	public String omikujiProcess(HttpSession session, @RequestParam(value = "number", defaultValue = "15") Integer number,
			@RequestParam(value = "city", defaultValue = "city") String city,
			@RequestParam(value = "person", defaultValue = "person") String person,
			@RequestParam(value = "hobby", defaultValue = "hobby") String hobby,
			@RequestParam(value = "thing", defaultValue = "thing") String thing,
			@RequestParam(value = "nice", defaultValue = "say something nice") String nice) {

		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);

		return "redirect:/omikuji/show";
	}

	@RequestMapping("/omikuji/show")
	public String omikujiShow(HttpSession session, Model model) {

		HashMap<String, String> omikujiList = new HashMap<String, String>();

		Integer number = (Integer) session.getAttribute("number");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String hobby = (String) session.getAttribute("hobby");
		String thing = (String) session.getAttribute("thing");
		String nice = (String) session.getAttribute("nice");

		String numberConverted = number.toString();

		omikujiList.put("number", numberConverted);
		omikujiList.put("city", city);
		omikujiList.put("person", person);
		omikujiList.put("hobby", hobby);
		omikujiList.put("thing", thing);
		omikujiList.put("nice", nice);

		model.addAttribute("omikujiList", omikujiList);

		return "omikuji_show.jsp";
	}
}
