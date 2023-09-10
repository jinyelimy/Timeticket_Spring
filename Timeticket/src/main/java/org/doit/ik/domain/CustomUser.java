package org.doit.ik.domain;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.doit.ik.domain.MemberVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User{


	private static final long serialVersionUID = 6651833559101616339L;
	
	private MemberVO member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		
	}
	
	public CustomUser(MemberVO vo) {
		super(vo.getMem_id(), 
				"{noop}"+vo.getMem_pw(), 
				vo.getAuthList().stream().map( auth->new SimpleGrantedAuthority( auth.getAuthority() ) ).collect( Collectors.toList() ));
		this.member = vo;
	}

}
