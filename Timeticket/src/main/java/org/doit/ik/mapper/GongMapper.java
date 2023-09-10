package org.doit.ik.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.MainTicVO;
import org.springframework.stereotype.Repository;

@Repository
public interface GongMapper {
	
	 List<GongVO> selectGong(@Param("currentPage") int currentPage,@Param("numberPerPage") int numberPerPage); 
	 GongVO view(@Param("noti_num") String noti_num); 
	 int getTotal();
	 ArrayList<MainTicVO> getLcate();
}

