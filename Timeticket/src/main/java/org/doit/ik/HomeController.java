package org.doit.ik;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.ik.domain.FreqVO;
import org.doit.ik.domain.GPageVO;
import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.service.FreqService;
/*import org.doit.ik.service.GPageService;*/
import org.doit.ik.service.GongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/timeticket/*")
@Controller
public class HomeController {
	
	@Autowired
 private GongService gongservice ;
	
	@Autowired
 private FreqService freqservice;
 
 
    @GetMapping("/notice.do")
    public String list ( Model model, GongVO gong, FreqVO freq, GPageVO page, HttpServletRequest request, HttpServletResponse response ) throws ClassNotFoundException, SQLException {
    	
    	int currentPage = 1; // 현재 페이지 번호
		int numberPerPage = 10; // 한 페이지에 출력할 게시글 수
		int numberOfPageBlock = 5;
		int total = 0; // 총 레코드 수
		  		   		
    		String pd = "board_notice";	
   		 pd =  request.getParameter("tb") == null ? "board_faq" : request.getParameter("tb");		 
   		try {
   			currentPage = Integer.parseInt(request.getParameter("currentpage"));
   		} catch (Exception e) {}
			
   		// 자주묻는 질문 들어왔을 때
   		    if (pd.equals("board_faq")) {
			int currentPage1 = 1; // 현재 페이지 번호
			int numberPerPage1 = 8; // 한 페이지에 출력할 게시글 수
			int numberOfPageBlock1 = 4;
			int total1 = 0; // 총 레코드 수
		}
   		    
   		int start = ( currentPage - 1 ) * numberPerPage + 1;
 		int end = start + numberPerPage - 1;
   		 if ( pd.equals("board_notice") ) {
 			// 공지사항 
 			total = this.gongservice.getTotal();
 		
 			//model.addAttribute("llist",this.gongservice.selectGong(page.getCurrentPage(),page.getNumberPerPage()) );
 			model.addAttribute("llist",this.gongservice.selectGong(start,end) );
 		}else if (pd.equals("board_faq")) {
 			total = this.freqservice.getTotal();
 			System.out.println(page.getCurrentPage());
 			System.out.println(page.getNumberOfPageBlock());
 			//model.addAttribute("list",this.freqservice.selectFreq(page.getCurrentPage(),page.getNumberPerPage()) );
 			model.addAttribute("list",this.freqservice.selectFreq(start,end) );
 		}else if (pd.equals("board_private")) {
 			
 		} 
   		    GPageVO pdto = new GPageVO(currentPage, numberPerPage, numberOfPageBlock, total);
   		    ArrayList<MainTicVO> lcate = this.gongservice.getLcate();
   		    
     	 model.addAttribute("lcate", lcate);
   		 model.addAttribute("pdto", pdto );
    		return "customer.notice";
    }

    
    @GetMapping("/gview.do")
    public String noti_num ( Model model, GongVO gong, FreqVO freq, GPageVO page) throws ClassNotFoundException, SQLException {
    	ArrayList<MainTicVO> lcate = this.gongservice.getLcate();
    	model.addAttribute("lcate", lcate);
    	model.addAttribute("dto",this.gongservice.view(gong.getNoti_num()) ); 
         return "customer.gview";
   	
		 
    }
    
    @GetMapping("/fview.do")
    public String freq_code ( Model model, GongVO gong, FreqVO freq, GPageVO page) throws ClassNotFoundException, SQLException {
    	ArrayList<MainTicVO> lcate = this.freqservice.getLcate();
    	model.addAttribute("lcate", lcate);
    	model.addAttribute("dto",this.freqservice.view(freq.getFreq_code()) ); 
         return "customer.view";
   	
		 
    }
    
  
}
