package com.example.back_end.model;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

/**
 * packageName : com.example.back_end.model
 * fileName : Board
 * author : gumin
 * date : 2022-06-02
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-02         gumin          최초 생성
 */
// @Data = @Getter, @Setter, ToString(배열 주소값으로 표기되는걸 변수값이 표기되도록 변경해줌)
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class Board {
    private Long   id;
    private String title;
    private String description;
    private String published;
    private String deleteYn;
    private String insertTime;
    private String updateTime;
    private String deleteTime;
}
