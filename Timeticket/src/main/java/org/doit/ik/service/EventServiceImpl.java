package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.doit.ik.domain.EventVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.mapper.EventMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor


public class EventServiceImpl implements EventService{
	
	@Autowired
	public EventMapper eventMapper;
	
	@Override
	public List<EventVO> getList() {
		return this.eventMapper.getList();
	}

	@Override
	public  EventVO detail(String eve_code) {
		return this.eventMapper.detail(eve_code);
	}

	@Override
	public EventVO competition(String eve_code) {
		return this.eventMapper.competition(eve_code);
	}

	@Override
	public List<EventVO> jackpot(String pseq) {
		return this.eventMapper.jackpot(pseq);
	}

	@Override
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException {
		return  this.eventMapper.getLcate();
	}


}
