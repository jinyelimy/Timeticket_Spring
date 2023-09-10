package org.doit.ik.controller;

import java.util.ArrayList;

import org.doit.ik.domain.BannerVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.ReviewVO;
import org.doit.ik.mapper.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/timeticket/*")
public class MainController {
	
	@Autowired
	private MainMapper mainDao;
	
		@RequestMapping("/main.do")
		public String home(Model model) throws Exception{
			ArrayList<MainTicVO> lcate = this.mainDao.getLcate();
			model.addAttribute("lcate", lcate);
			ArrayList<BannerVO> banner = this.mainDao.banner();
			model.addAttribute("banner", banner);
			ArrayList<MainTicVO> newtic = this.mainDao.selectNew();
			model.addAttribute("newtic", newtic);
			ArrayList<MainTicVO> lcate3 = this.mainDao.selectLcate3();
			model.addAttribute("lcate3", lcate3);
			ArrayList<MainTicVO> lcate2 = this.mainDao.selectLcate2();
			model.addAttribute("lcate2", lcate2);
			ArrayList<MainTicVO> lcate5 = this.mainDao.selectLcate5();
			model.addAttribute("lcate5", lcate5);
			ArrayList<MainTicVO> kids = this.mainDao.selectKids();
			model.addAttribute("kids", kids);
			ArrayList<MainTicVO> timesale = this.mainDao.selectTimesale();
			model.addAttribute("timesale", timesale);
			ArrayList<ReviewVO> review = this.mainDao.selectReview();
			model.addAttribute("review", review);

			return "main"; //*.*
	}
	
}
