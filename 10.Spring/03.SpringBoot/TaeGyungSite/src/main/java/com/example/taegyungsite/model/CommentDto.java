package com.example.taegyungsite.model;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * packageName : com.example.taegyungsite.model
 * fileName : CommentDto
 * author : ds
 * date : 2022-05-20
 * description : 댓글을 위한 모델 클래스 ( DB 데이터가 저장되는 클래스 )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-20         ds          최초 생성
 */
// 롬북 라이브러리에서 제공하는 어노테이션
@Getter
@Setter
@ToString
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class CommentDto extends CommonDto {
//    IDX NUMBER NOT NULL -- 댓글번호
//    ,BOARD_IDX NUMBER -- 게시판번호
//    ,CONTENT VARCHAR2(1000) -- 댓글내용
//    ,WRITER VARCHAR2(255) -- 댓글작성자
//    ,DELETE_YN CHAR(1) DEFAULT 'N'
//            ,INSERT_DATE DATE -- 댓글 등록 일시
//    ,UPDATE_DATE DATE -- 댓글 수정 일시
//    ,DELETE_DATE DATE -- 댓글 삭제 일시
    private Long idx; // 댓글번호
    private Long boardIdx; // 게시판번호
    private String content; // 댓글내용
    private String writer; // 댓글작성자
}














