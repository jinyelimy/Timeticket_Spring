package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;


public interface DetailMapper {

		public Section01VO view(String tic_code) throws SQLException;
		
		public Section03VO infoview(String tic_code) throws SQLException;
		
		public Section04VO placeview(String tic_code) throws SQLException;
		
		public Preview01VO preview1(String tic_code) throws SQLException;
		
		public ArrayList<Preview02VO> preview2(String tic_code) throws SQLException;
		
		public TimesaleVO timeview(String tic_code) throws SQLException;
		
		public TodaysaleVO todayview(String tic_code) throws SQLException;
		
		public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
}
