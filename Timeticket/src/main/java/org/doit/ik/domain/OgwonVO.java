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
public class OgwonVO {
		private String tic_code;
		private int tic_price;
		private String o_code;
		private Date o_date;
		private String o_time;
		private String o_option;
		private String gwon_code;
		private String regi_num;
		private String gwon_name;
		private int gwon_pay;
		private int gwon_sale;
		private int gwon_count;
			
}
