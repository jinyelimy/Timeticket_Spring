package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.FreqVO;
import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.MainTicVO;

import lombok.extern.log4j.Log4j;

import org.doit.ik.domain.GongVO;
import org.doit.ik.domain.GongVO;

public interface FreqService {

	List<FreqVO> selectFreq(@Param("currentPage") int currentPage,@Param("numberPerPage") int numberPerPage);

	 FreqVO view(@Param("freq_code") String freq_code);

	int getTotal(); 
	  
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
	
}
