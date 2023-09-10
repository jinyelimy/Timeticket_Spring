package org.doit.ik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ListVO {
	private String tic_code;
	private String tic_name;
	private String tic_prof;
	private String reg_code;
	private String lcate_code;
	private String lcate_name;
	private String scate_code;
	private String scate_name;
	private String gen_code;
	private String gen_name;
	private int tic_price;
	private String tic_loc;
	private Date tic_regist;
	private int newb;
	private int tic_kids;
	private int msale;
	private String stic_price;
	private double ravg;
	private int rcount;
	private String tgwon_name;
	private String dgwon_name;
	private int sticket;
}
