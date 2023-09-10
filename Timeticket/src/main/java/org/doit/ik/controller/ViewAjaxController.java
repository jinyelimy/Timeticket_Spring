package org.doit.ik.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.List;

import org.apache.tiles.request.Request;
import org.doit.ik.domain.AjaxVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;
import org.doit.ik.mapper.DetailAjaxMapper;
import org.doit.ik.mapper.DetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/ajaxview/*")
public class ViewAjaxController {

	@Setter(onMethod=@__({@Autowired}))
	private DetailAjaxMapper detailajaxMapper;
	
	@GetMapping(value = "/imgview")
	public Section03VO imageview(String tic_code) throws Exception {
		log.info("> /0... Section03VO imageview - Ajax : " + tic_code );
		Section03VO section03VO = detailajaxMapper.imageview(tic_code);
		 return section03VO;
	}
	
	@GetMapping(value = "/0")
	public AjaxVO infoview(String tic_code) throws Exception {
		log.info("> /0... Section03VO infoview - Ajax : " + tic_code );
		AjaxVO ajaxVO = detailajaxMapper.infoview(tic_code);
		 return ajaxVO;
	}
	
	@GetMapping(value = "/1")
	public List<Preview02VO> preview2(String tic_code) throws Exception {
		log.info("> /1... List<Preview02VO> preview2 - Ajax : " + tic_code );
		List<Preview02VO> preview02VO = detailajaxMapper.preview2(tic_code);
		 return preview02VO;
	}
	
	/*
	 * @GetMapping(value = "/ajaxview/2") public String view(String tic_code) throws
	 * Exception {
	 * 
	 * }
	 */
	
	@GetMapping(value = "/3")
	public Section04VO placeview(String tic_code) throws Exception {
		log.info("> /3... Section04VO placeview - Ajax : " + tic_code );
		Section04VO section04VO = detailajaxMapper.placeview(tic_code);
		 return section04VO;
	}
	
	@GetMapping(value = "/4")
	public Section05VO refundview(String tic_code) throws Exception {
		log.info("> /4... Section05VO refundview - Ajax : " + tic_code );
		Section05VO section05VO = detailajaxMapper.refundview(tic_code);
		 return section05VO;
	}
	
	@GetMapping(value = "/checkid")
	public int checkid(String mem_id) throws Exception {
		log.info("> checkid... - Ajax : " + mem_id );
		int member = detailajaxMapper.checkid(mem_id);
		System.out.println(member);
		return member;
	}
	 

} // class
