package org.doit.ik.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.domain.PayVO;

public interface PayMapper {
	
	// 1. 티켓정보 보기
	PayVO tinfo(String tic_code);
	
	// 2. 환불규정 보기
	PayVO refundview(String tic_code);
	
	// 3. 예매된 티켓 정보
	int inpay(@Param("mem_id") String mem_id,@Param("pay_code") String pay_code,@Param("gwon_code") String gwon_code,@Param("book_price") int book_price,@Param("book_cnt") int book_cnt,@Param("book_point") int book_point);
	
	public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException;
}
