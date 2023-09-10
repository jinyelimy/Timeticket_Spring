package org.doit.ik.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String mem_id;          
	private String mem_pw;
	private String mem_name;
	private String mem_mail;
	private String mem_num;
	private Date mem_join; 
	private String mem_point;  
		
	// 필드 2개 추가 
	private boolean enabled=true;
	private List<AuthVO> authList ;
}
