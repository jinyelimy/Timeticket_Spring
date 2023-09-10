package org.doit.ik.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TodaysaleVO {
	private String tic_code;
	private String gwon_name;
	private int gwon_sale;
	private String tds_fulltime;
	private String tds_time;
	private String tds_minute;
	private String tds_second;
	private Date regi_etime;
	
	
}
