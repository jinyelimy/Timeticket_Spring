package org.doit.ik.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Component("customLoginSuccessHandler")
@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{@Override

	public void onAuthenticationSuccess(
			HttpServletRequest request
			, HttpServletResponse response,
			Authentication authentication //인증받은 사용자의 정보
			) throws IOException, ServletException {

	log.warn("> Login Success...");

	List<String> roleNames = new ArrayList<String>();
	authentication.getAuthorities().forEach( auth ->  {
		roleNames.add(auth.getAuthority()); //권한 정보를 가진 집합 안에서 권한을 읽어와서 add
	});

	log.warn("> ROLE NAMES : " + roleNames );
	//권한에 따라 로그인 시 redirect 되는 곳을 정해줌
	if ( roleNames.contains("ROLE_ADMIN")) { 
		response.sendRedirect(request.getContextPath() + "/timeticket/main.do");
		return;
	} else if( roleNames.contains("ROLE_MANAGER")){
		response.sendRedirect(request.getContextPath() + "/timeticket/main.do");
		return;
	} else if( roleNames.contains("ROLE_USER")){
		response.sendRedirect(request.getContextPath() + "/timeticket/main.do");
		return;
	}

}


}
