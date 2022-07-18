package co.micol.potal.board.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;


@Setter
@Getter
public class BoardVO {
	private int no;		
	private String writer;		// member테이블의 id와 동일하게 DB에 입력해놓음.
	
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date wdate;
	private String title;
	private String subject;
	private int hit;
	
	private String name;		// member name

}
