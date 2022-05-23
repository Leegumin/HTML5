package com.example.boot_exam.model;

import com.example.boot_exam.model.CommonDto;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

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
public class BoardDto extends CommonDto {
    private String boardTitle;
    private String boardContent;
    private String boardWriter;
    private Long viewCnt;


}
