package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.doit.ik.domain.EventVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.mapper.EventMapper;

public interface EventService {

	List<EventVO> getList();
	
	EventVO detail(String eve_code) ;
	
	EventVO competition(String eve_code) ;
	
	List<EventVO> jackpot(String pseq) ;
	
	ArrayList<MainTicVO> getLcate() throws ClassNotFoundException,SQLException;
	
}
