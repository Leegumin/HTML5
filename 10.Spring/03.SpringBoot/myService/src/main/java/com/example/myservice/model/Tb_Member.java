package com.example.myservice.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * packageName : com.example.myservice.model
 * fileName : Tb_Member
 * author : ds
 * date : 2022-05-16
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-16         ds          최초 생성
 */
// Rombok의 기능
// getter, setter을 자동으로 적용시켜줌
// @Data : 디버그를 위한 데이터 표시 어노테이션
@Getter
@Setter
public class Tb_Member {
    // @JsonProperty : insert 테스트 json 형식으로 넣을 때
    // Json의 속성명 : value = "userId"
    // { "userId" : "forbob" } -> 속성명 : 값
    @JsonProperty(value = "userId")
    private String userId;

    @JsonProperty(value = "userName")
    private String userName;

    @JsonProperty(value = "userAuth")
    private String userAuth;

    @JsonProperty(value = "appendDate")
    private String appendDate;

    @JsonProperty(value = "updateDate")
    private String updateDate;
}
