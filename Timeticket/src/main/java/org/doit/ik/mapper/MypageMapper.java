package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.ReviewVO;
import org.springframework.stereotype.Repository;

@Repository
public interface MypageMapper {
	
	//Top을 가져옴
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
	
	//나의 이용후기를 가져오는 메소드
	public ArrayList<ReviewVO> getmyRev(String memId) throws ClassNotFoundException, SQLException;
	
	//이용가능한 티켓 수를 가져오는 메소드
	public ArrayList<ReviewVO> getUsableTicCount(String memId) throws ClassNotFoundException, SQLException;
	
	/* 구현할 때 주석 풀기
	//이용후기 작성
	public int insert(ReviewVO review) throws ClassNotFoundException, SQLException;
	
	//이용후기 수정
	public int update(ReviewVO review) throws ClassNotFoundException, SQLException;
	
	//이용후기 삭제
	public int delete(String book_code) throws ClassNotFoundException, SQLException;
	*/
	
}//MypageMapper

