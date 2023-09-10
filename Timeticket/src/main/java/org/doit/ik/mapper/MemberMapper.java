package org.doit.ik.mapper;

import java.sql.SQLException;

import org.doit.ik.domain.MemberVO;
 
public interface MemberMapper {
	
	// 회원 정보 얻어오는 메서드  
	public MemberVO getMember(String id) throws ClassNotFoundException, SQLException;
	 
	// 회원 가입 메서드 
	public int insert(MemberVO member) throws ClassNotFoundException, SQLException;
	 
	// 회원 정보 + 권한정보(authList)들 얻어오는 메서드  
	public MemberVO  read(String userid);
}
