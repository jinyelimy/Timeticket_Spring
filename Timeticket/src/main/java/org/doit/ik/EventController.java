package org.doit.ik;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.doit.ik.domain.EventVO;
import org.doit.ik.mapper.EventMapper;
import org.doit.ik.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/timeticket/*")
@AllArgsConstructor


public class EventController {
	
	@Autowired
	public  EventService eventservice;
	
	
	@GetMapping("/event.do")  public String list(Model model) throws ClassNotFoundException, SQLException {
		model.addAttribute("elist",this.eventservice.getList());
		model.addAttribute("lcate",this.eventservice.getLcate());
		
		return "event.event";
	}
	
	
	@GetMapping("/eview.do") public String detail(Model model, String eve_code ) throws ClassNotFoundException, SQLException {
		model.addAttribute("edto",this.eventservice.detail(eve_code));
		model.addAttribute("dto",this.eventservice.competition(eve_code));
		model.addAttribute("jlist",this.eventservice.jackpot(eve_code));
		model.addAttribute("lcate",this.eventservice.getLcate());
		
		return "event.eview";
	}
	
	}
	

