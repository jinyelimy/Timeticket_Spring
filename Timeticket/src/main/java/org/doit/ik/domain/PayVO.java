package org.doit.ik.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayVO {

	private String tic_code;
	private String tic_name;	// 티켓 제목
	private String place;		// 장소
	private String place_add;	// 상세 장소
	
	private String ref_rule; 	// 환불규정
	private String ref_cau;		// 주의사항
	private String ref_way;		// 환불방법

}
