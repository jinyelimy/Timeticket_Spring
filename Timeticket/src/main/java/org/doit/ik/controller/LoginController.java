package org.doit.ik.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.ik.domain.MemberVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;
import org.doit.ik.mapper.DetailMapper;
import org.doit.ik.mapper.JoinusMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/joinus/*")
public class LoginController {
	
	@Autowired
	private JoinusMapper joinusMapper;
	
	@GetMapping("/login.do")
	public String login( ) throws Exception {
		
		return "login";
	}
	
	@GetMapping("/join.do")
	public String join() throws Exception{
		return "member";
	}
	
	@PostMapping("/join.do")
	public String join(MemberVO vo) throws Exception{
		int insMem = this.joinusMapper.joinMem(vo);
		if(insMem==1) {
			return "redirect:/timeticket/main.do";
		} else {
			return "/timeticket/join.do?error_true";
		}
		
	}
	
} // class
