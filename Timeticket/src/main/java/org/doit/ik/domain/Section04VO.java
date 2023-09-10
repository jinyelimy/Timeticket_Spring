package org.doit.ik.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Section04VO {
	private String tic_code;
	private String place;
	private String place_add;
	private String place_park;
	private double place_lat;
	private double place_lon;
	
	
}
