package org.doit.ik.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;
import org.doit.ik.mapper.DetailMapper;
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
@RequestMapping("/timeticket/*")
public class ViewController {

	@Autowired
	public DetailMapper detailMapper;
	
		
	@GetMapping("/view.do")
	public String view(@RequestParam("tic_code") String tic_code, Model model ) throws Exception {
		ArrayList<MainTicVO> lcate = this.detailMapper.getLcate();       
		Section01VO vdto = this.detailMapper.view(tic_code);
		Section03VO idto = this.detailMapper.infoview(tic_code); 
		Section04VO pdto = this.detailMapper.placeview(tic_code); 
		Preview01VO p1dto = this.detailMapper.preview1(tic_code);
		ArrayList<Preview02VO> plist = this.detailMapper.preview2(tic_code);
		TimesaleVO tvdto = this.detailMapper.timeview(tic_code); 
		TodaysaleVO tdvdto = this.detailMapper.todayview(tic_code);

		model.addAttribute("lcate", lcate);
		model.addAttribute("vdto", vdto);
		model.addAttribute("idto", idto); 
		model.addAttribute("pdto", pdto);
		model.addAttribute("p1dto", p1dto);
		model.addAttribute("plist", plist);
		model.addAttribute("tvdto", tvdto);
		model.addAttribute("tdvdto", tdvdto);
		 
		
		return "detail.view";
	}
	
} // class
