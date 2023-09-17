package org.doit.ik.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.tiles.request.Request;
import org.doit.ik.domain.AjaxVO;
import org.doit.ik.domain.OgwonVO;
import org.doit.ik.domain.OtimeParams;
import org.doit.ik.domain.OtimeVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;
import org.doit.ik.mapper.CalendarAjaxMapper;
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
@RequestMapping("/ajaxcalendar/*")
public class CalendarAjaxController {

	@Setter(onMethod=@__({@Autowired}))
	private CalendarAjaxMapper calendarajaxMapper;
	
	
	
	@GetMapping(value = "/0")
	public List<OtimeVO> otimeview(String tic_code, String o_date) throws Exception {
		log.info("> /otimeview... DateVO otimeview - Ajax : " + tic_code +"&" + o_date);
		List<OtimeVO> otimeVO = calendarajaxMapper.otimeview(tic_code,o_date);
		 return otimeVO;
	}
	
	
	@GetMapping(value = "/1")
	public List<OgwonVO> ogwonview(OtimeParams params) throws Exception {
	    log.info("> /otimeview... DateVO ogwonview - Ajax : " + params.getTic_code() + "&" + params.getO_date() + "&" + params.getO_time());

	    // 파라미터를 Map으로 변환
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("tic_code", params.getTic_code());
	    paramMap.put("o_date", params.getO_date());
	    paramMap.put("o_time", params.getO_time());

	    List<OgwonVO> ogwonVO = calendarajaxMapper.ogwonview(paramMap);
	    return ogwonVO;
	}
} // class
