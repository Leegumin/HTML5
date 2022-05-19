package com.example.guminsite.model;

import com.example.guminsite.paging.Criteria;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

/**
 * packageName : com.example.guminsite.model
 * fileName : Common
 * author : gumin
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         gumin          최초 생성
 */
@Setter
@Getter
@ToString
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class CommentDto extends CommonDto {
    // 삭제여부 (Y ,N)
    private Long          idx;
    private Long          boardIdx;
    private String        content;
    private String        writer;
    private String        deleteYn;
    private LocalDateTime insertDate;
    private LocalDateTime updateDate;
    private LocalDateTime deleteDate;

}
