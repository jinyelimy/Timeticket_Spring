package org.doit.ik.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TimesaleVO {
	private String tic_code;
	private String gwon_name;
	private int gwon_sale;
	private String ts_etime;
	private Date regi_etime;

	
}
