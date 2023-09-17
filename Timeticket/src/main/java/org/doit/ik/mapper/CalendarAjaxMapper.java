package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.AjaxVO;
import org.doit.ik.domain.OgwonVO;
import org.doit.ik.domain.OtimeVO;
import org.doit.ik.domain.Preview01VO;
import org.doit.ik.domain.Preview02VO;
import org.doit.ik.domain.Section01VO;
import org.doit.ik.domain.Section03VO;
import org.doit.ik.domain.Section04VO;
import org.doit.ik.domain.Section05VO;
import org.doit.ik.domain.TimesaleVO;
import org.doit.ik.domain.TodaysaleVO;
import org.springframework.web.bind.annotation.RequestParam;


public interface CalendarAjaxMapper {
	List<OtimeVO> otimeview(@RequestParam("tic_code") String tic_code, @RequestParam("o_date") String o_date);

	// List<OgwonVO> ogwonview(@RequestParam("tic_code") String tic_code, @RequestParam("o_date") String o_date,@RequestParam(" o_time") String  o_time);

	List<OgwonVO> ogwonview(Map<String, Object> paramMap);
	
}
