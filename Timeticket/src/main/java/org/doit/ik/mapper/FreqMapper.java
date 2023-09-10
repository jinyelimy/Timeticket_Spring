package org.doit.ik.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.FreqVO;
import org.doit.ik.domain.MainTicVO;
import org.springframework.stereotype.Repository;

@Repository
public interface FreqMapper {
	
	      List<FreqVO> selectFreq(@Param("currentPage") int currentPage,@Param("numberPerPage") int numberPerPage); 
		  FreqVO view(@Param("freq_code") String freq_code); 
		  int getTotal();
		  ArrayList<MainTicVO> getLcate();
		 
	
	
}
