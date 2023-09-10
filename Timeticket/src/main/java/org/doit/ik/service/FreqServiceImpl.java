package org.doit.ik.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.doit.ik.domain.FreqVO;
import org.doit.ik.domain.MainTicVO;
import org.doit.ik.mapper.FreqMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor // 생성자의 DI 에 의해서 자동으로 객체가 주입된다.
public class FreqServiceImpl implements FreqService{
   
   @Autowired
   private FreqMapper freqmapper;

   @Override
   public List<FreqVO> selectFreq(@Param("currentPage") int currentPage, @Param("numberPerPage")int numberPerPage) {
      return freqmapper.selectFreq(currentPage, numberPerPage);
   }


  @Override 
  public FreqVO view(@Param("freq_code") String freq_code) { 
  return this.freqmapper.view(freq_code);
  
  }


@Override
public int getTotal() {
return this.freqmapper.getTotal();
}


@Override
public ArrayList<MainTicVO> getLcate() throws ClassNotFoundException, SQLException {
return this.freqmapper.getLcate();
}
 



}