package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.MainTicVO;

public interface GongService {

	List<GongVO> selectGong(@Param("currentPage") int currentPage, @Param("numberPerPage") int numberPerPage);

	GongVO view(@Param("noti_num") String noti_num);

	int getTotal();
	
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
	
}
