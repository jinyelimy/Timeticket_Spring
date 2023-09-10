package org.doit.ik.security;

import org.doit.ik.domain.CustomUser;
import org.doit.ik.domain.MemberVO;
import org.doit.ik.mapper.MemberMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Component("customUserDetailsService")
@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod=@__({@Autowired}))
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("> Load User By UserName : " + username);
		// vo 객체에는   회원정보 + 권한정보(authList)
		MemberVO vo  = this.memberMapper.read(username);
		log.warn("> Queiried by Member mapper : " + vo);
		
		// UserDetails    <- 변환X                                 vo
		//                          User 구현 org.doit.ik.security.damin.CustomUser
		return vo == null ? null : new CustomUser(vo);
	}

}
