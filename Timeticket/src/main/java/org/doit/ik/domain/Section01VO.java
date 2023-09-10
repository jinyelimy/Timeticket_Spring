package org.doit.ik.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Section01VO {
	private String tic_code;
	private String tic_time;
	private String tic_loc;
	private String tic_class;
	private String tic_prof;
	private String tic_back;
	private String tic_name;
	private int tic_price;
	private int sale_pay;
	private Date tic_regist; 
	private Double new_bar; 
	private String tic_age;
	private String tic_run_ti;
	private String reg_name;
	private String lcate_name;
	private String scate_name;
	private String gen_name;
	private int gwon_sale;

	
}
