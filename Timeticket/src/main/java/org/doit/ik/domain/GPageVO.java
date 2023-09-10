package org.doit.ik.domain;

import java.sql.SQLException;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class GPageVO {

	private int currentPage = 1; // 현재 페이지 번호
	private int numberPerPage = 10; // 한 페이지 출력할 게시글 개수
	private int numberOfPageBlock = 5; // 페이지 블럭 수
	private int start, end; // 페이지 시작값, 끝값
	private boolean prev, next; // 이전버튼, 다음버튼
	
	public GPageVO(int currentPage, int numberPerPage, int numberOfPageBlock, int total) {
		
		int totalPages; // 총 페이지 수
		totalPages = (int)Math.ceil( (double)total / numberPerPage );
		
		this.currentPage = currentPage;
		this.start = (currentPage -1) / numberOfPageBlock * numberOfPageBlock +1 ;
		this.end = start + numberOfPageBlock - 1;
		this.end = end > totalPages ? totalPages : end;

		this.prev = this.start > 1;
		this.next = end < totalPages;
		
	}	
	
	
}
