package org.doit.ik.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.ReviewVO;
import org.doit.ik.mapper.MainMapper;
import org.doit.ik.mapper.MypageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/timeticket/*")
public class MypageController {
	
	@Autowired
	private MypageMapper mypageDao;
	@Autowired
	private MainMapper mainDao;
	
		
	@RequestMapping("/review.do")
	public String reviewDetail(Model model, Principal principal) throws Exception{
		ArrayList<MainTicVO> lcate = this.mainDao.getLcate();
		model.addAttribute("lcate", lcate);
	    // 로그인한 사용자의 식별자를 얻어옴(세션)
	    String userid = principal.getName();

	    // 해당 사용자가 작성한 후기 조회
	    ArrayList<ReviewVO> review = this.mypageDao.getmyRev(userid);
	    model.addAttribute("review", review);
	    
	    
	    // 해당 사용자의 이용가능한 티켓수 조회
	    ArrayList<ReviewVO> usableTic = this.mypageDao.getUsableTicCount(userid);
	    model.addAttribute("usableTic", usableTic);

	    return "mypage.review";
	}
			
}//controller
