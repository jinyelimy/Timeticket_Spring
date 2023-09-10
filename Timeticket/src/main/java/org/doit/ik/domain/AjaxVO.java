package org.doit.ik.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class AjaxVO {
		private String tic_code;
		private String info;
		private String info_agenc;
		private String info_use;
		private String tic_pic_in;
		private String info_note;
		private String info_host;
		private String info_num;
		private String info_link;
		private String place;
		private String place_add;
		private String place_park;
		private double place_lat;
		private double place_lon;
		private String ref_rule;
		private String ref_cau;
		private String ref_way;
		
}
