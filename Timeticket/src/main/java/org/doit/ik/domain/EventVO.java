package org.doit.ik.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventVO {

	public String eve_code;
	public String tic_code;
	public String tic_name;
	public String tic_prof;
	public String eve_cond;
	public String eve_stdate;
	public String eve_eddate;
	public String eve_anno;
	public int eve_tar;
	public String place;
	public String scate_name;
	public String tic_age;
	private int allcount;
	private double competition;
	private String mem_id;
	private String mem_name;
	private String mem_num;
}
