package com.example.guminsite.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * packageName : com.example.guminsite.model
 * fileName : BoardDto
 * author : gumin
 * date : 2022-05-17
 * description : Model -> Dao -> xml -> Service -> Controller
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-17         gumin          최초 생성
 */
@Getter
@Setter
@ToString
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class BoardDto extends CommonDto{
    // 번호 (PK : Primal key 기본키)
    private Long   idx;
    // 제목
    private String title;
    // 내용
    private String content;
    // 작성자
    private String writer;
    // 조회수
    private int    viewCnt;
    // 공지여부 (Y ,N)
    private String noticeYn;
    // 비밀여부 (Y ,N)
    private String secretYn;


}
