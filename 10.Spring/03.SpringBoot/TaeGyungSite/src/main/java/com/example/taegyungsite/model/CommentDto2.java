package com.example.taegyungsite.model;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

/**
 * packageName : com.example.taegyungsite.model
 * fileName : CommentDto2
 * author : gumin
 * date : 2022-05-23
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-23         gumin          최초 생성
 */
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class CommentDto2 extends CommonDto2{
    // 댓글 번호
    private Long idx;
    // 게시판 번호
    private Long boardIdx;
    // 댓글 내용
    private String content;
    // 댓글 작성자
    private String writer;
}
