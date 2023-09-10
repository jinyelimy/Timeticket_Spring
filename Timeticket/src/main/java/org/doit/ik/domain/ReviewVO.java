package org.doit.ik.domain;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	
	//1. 필드 선언
	
	private String tic_code;
	private String tic_name;
	private String tic_back;
	private String mem_id;
	private String mem_name;
	private int mem_point;
	private String book_code;
	private int rev_point;
	private String rev_img; //기존 리뷰 이미지
	private Date rev_date;
	private String rev_cont;
	private Date o_date;
	private String o_time;
	private String o_option;
	private String gwon_name;
	private int book_price;
	private Date book_date;
	private int book_cnt;
	private String book_stat;
	private int useable_tic_count; //이전에 UsableticketCountVO 합침
	private int revexists; //이전에 UsableticketCountVO 합침
	private CommonsMultipartFile file; //사진파일 업로드용
	

}//ReviewVO
