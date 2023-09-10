package org.doit.ik;

import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.GenreVO;
import org.doit.ik.domain.ListVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.RegionVO;
import org.doit.ik.domain.ScategoryVO;
import org.doit.ik.mapper.ListMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ListController {
	
	@Autowired
	public ListMapper listMapper;
	
	@GetMapping("/timeticket/list.do")
	public String list(ListVO vo,String sort
			,Model model) throws ClassNotFoundException, SQLException {
		
		ArrayList<GenreVO> gList =null;
		ArrayList<RegionVO> rList =   this.listMapper.getRegion();
		ArrayList<ScategoryVO> sList = this.listMapper.getScategory(vo);
		ArrayList<ListVO>lList =  this.listMapper.getList(vo, sort);
		if(vo.getScate_code() != null) {
			gList = this.listMapper.getGenre(vo);
		}
		String lcate_name = this.listMapper.getLcateName(vo);
		ArrayList<MainTicVO> lcate = this.listMapper.getLcate();

		model.addAttribute("lcate", lcate);
		model.addAttribute("rList", rList);
		model.addAttribute("lList", lList);
		model.addAttribute("sList", sList);
		model.addAttribute("gList", gList);
		model.addAttribute("lcate_name", lcate_name);
		
		return "list.list";
	}
}
