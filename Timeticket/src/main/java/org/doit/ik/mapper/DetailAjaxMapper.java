package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.List;

import org.doit.ik.domain.AjaxVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;


public interface DetailAjaxMapper {
		Section03VO imageview(String tic_code);

		AjaxVO infoview(String tic_code);
		
		List<Preview02VO> preview2(String tic_code);
		
		Section04VO placeview(String tic_code);
		
		Section05VO refundview(String tic_code);

		int checkid(String mem_id);
		
}
