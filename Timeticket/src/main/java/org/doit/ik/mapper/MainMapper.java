package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.BannerVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.ReviewVO;
import org.springframework.stereotype.Repository;

@Repository
public interface MainMapper {
	
	//Top을 가져옴
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
		
	//배너 
	public ArrayList<BannerVO> banner() throws ClassNotFoundException, SQLException;
	
	//신규오픈
	public ArrayList<MainTicVO> selectNew() throws ClassNotFoundException, SQLException;
	
	//체험 여가 selectLcate3()
	public ArrayList<MainTicVO> selectLcate3() throws ClassNotFoundException, SQLException;
	
	//전시 selectLcate2()
	public ArrayList<MainTicVO> selectLcate2() throws ClassNotFoundException, SQLException;
	
	//원데이 클래스 selectLcate5()
	public ArrayList<MainTicVO> selectLcate5() throws ClassNotFoundException, SQLException;
	
	//어린이 뮤지컬	selectKids()
	public ArrayList<MainTicVO> selectKids() throws ClassNotFoundException, SQLException;
	
	//타임세일 selectTimesale()	
	public ArrayList<MainTicVO> selectTimesale() throws ClassNotFoundException, SQLException;
	
	//리뷰 selectReview()
	public ArrayList<ReviewVO> selectReview() throws ClassNotFoundException, SQLException;
	
}//MainMapper
