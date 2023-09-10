package org.doit.ik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GongVO {
	
	private int no;
	private String noti_num;
	private Date noti_date;
	private String noti_title;
	private String noti_cont;
	private int order_num;

	
}







