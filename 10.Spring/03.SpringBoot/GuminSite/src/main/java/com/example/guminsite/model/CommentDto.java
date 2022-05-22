package com.example.guminsite.model;

import com.example.guminsite.paging.Criteria;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;
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
// @Data => @Getter + @Setter + @ToString + @HashCode
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class CommentDto extends CommonDto {
    // *댓글번호
    private Long          idx;
    // *게시판번호
    private Long          boardIdx;
    // *내용
    private String        content;
    // *작성자
    private String        writer;
    // *삭제여부
    private String        deleteYn;
    
    // CommonDto에서 상속받으면 됨 -> 굳이 컬러명과 일치할 필요는 없고 쿼리문과 연동 시키거나 할때만
    // 맞춰주면 상관없음
    // *댓글쓴 날짜
    private LocalDateTime insertDate;
    // *수정한 날짜
    private LocalDateTime updateDate;
    // *삭제한 날짜
    private LocalDateTime deleteDate;

}
