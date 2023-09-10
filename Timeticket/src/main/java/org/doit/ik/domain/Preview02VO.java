package org.doit.ik.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Preview02VO {
	private String tic_code;
	private int rev_point;	
	private String rev_img;
	private Date rev_date; 
	private String rev_cont;
	private String mem_name;
	
	
}
