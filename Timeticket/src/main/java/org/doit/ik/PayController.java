package org.doit.ik;


import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.PayVO;
import org.doit.ik.mapper.PayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/timeticket/*")
@Log4j
public class PayController {
	
	@Autowired
	private PayMapper payMapper;
	
	@GetMapping("/pay.do")
	public String pay( @RequestParam("tic_code") String tic_code,Model model ) throws ClassNotFoundException, SQLException {
		log.info("> /timeticket/pay get...");
		PayVO dto = null;
		PayVO dto2 = null;
		ArrayList<MainTicVO> lcate = this.payMapper.getLcate();
        model.addAttribute("lcate", lcate);
		
		dto = this.payMapper.tinfo(tic_code);
		dto2 = this.payMapper.refundview(tic_code);
		
		model.addAttribute("dto", dto);
		model.addAttribute("dto2", dto2);
		
		return "pay.pay";
	}
	
	@PostMapping("/pay.do")
	public String pay(
  @RequestParam("mem_id") String mem_id
, @RequestParam("pay_code") String pay_code
, @RequestParam("gwon_code") String gwon_code
, @RequestParam("book_price") int book_price
, @RequestParam("book_cnt") int book_cnt
, @RequestParam("book_point") int book_point) {

		int insertCount = this.payMapper.inpay(mem_id, pay_code, gwon_code, book_price, book_cnt, book_point);
		
		if(insertCount ==1) {
			return "redirect:/timeticket/main.do";
		} else {
			return "pay";
		}
		
	}
	
}
