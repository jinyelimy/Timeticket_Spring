package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.GenreVO;
import org.doit.ik.domain.ListVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.RegionVO;
import org.doit.ik.domain.ScategoryVO;

public interface ListMapper {
	
	//ArrayList<ScategoryVO> getScategory(@Param("lcate_code") String lcate_code);
	ArrayList<ScategoryVO> getScategory(ListVO vo);
	
	ArrayList<RegionVO> getRegion();
	
	ArrayList<GenreVO> getGenre(ListVO vo);
	
	ArrayList<ListVO> getList(@Param("vo") ListVO vo,@Param("sort") String sort);
	
	String getLcateName(ListVO vo);
	
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;

}
