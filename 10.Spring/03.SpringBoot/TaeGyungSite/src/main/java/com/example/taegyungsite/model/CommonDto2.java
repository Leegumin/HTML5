package com.example.taegyungsite.model;

import com.example.taegyungsite.paging.Criteria;
import com.example.taegyungsite.paging.Criteria2;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * packageName : com.example.taegyungsite.model
 * fileName : CommonDto2
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
public class CommonDto2 extends Criteria2 {
    // 삭제여부
    private String deleteYn;
    // 등록일
    private LocalDateTime insertTime;
    // 수정일
    private LocalDateTime updateTime;
    // 삭제일
    private LocalDateTime deleteTime;

}
