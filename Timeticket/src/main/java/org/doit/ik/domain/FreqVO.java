package org.doit.ik.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreqVO {

   private int no;
   private String freq_code;
   private String freq_name;
   private String freq_cont;
   private int order_num;


   
   
}


