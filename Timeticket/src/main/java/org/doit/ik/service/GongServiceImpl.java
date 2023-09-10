package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.mapper.GongMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor // 생성자의 DI 에 의해서 자동으로 객체가 주입된다.
public class GongServiceImpl implements GongService{
   
   @Autowired
   private GongMapper gongmapper;

@Override
public List<GongVO> selectGong(@Param("currentPage") int currentPage,@Param("numberPerPage") int numberPerPage) {
	return this.gongmapper.selectGong(currentPage,numberPerPage);
}

@Override
public GongVO view(@Param("noti_num") String noti_num) {
	return this.gongmapper.view(noti_num);
	
}

@Override
public int getTotal() {
return this.gongmapper.getTotal();
}

@Override
public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException {
return this.gongmapper.getLcate();
}





}