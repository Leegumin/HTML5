package com.example.dongsungsi.model;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

/**
 * packageName : com.example.dongsungsi.model
 * fileName : MemberDTO
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 */
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class MemberDTO {
    private Long   id;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String deleteYn;
    private String insertTime;
    private String updateTime;
    private String deleteTime;
}
