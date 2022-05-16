package com.example.myservice.model;

import com.fasterxml.jackson.annotation.JsonProperty;
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
@Getter
@Setter
public class Tb_Board {
    // @JsonProperty : insert 테스트 json 형식으로 넣을 때
    // Json의 속성명 : value = "userId"
    // { "userId" : "forbob" } -> 속성명 : 값
    @JsonProperty(value = "idx")
    private int idx;

    @JsonProperty(value = "title")
    private String title;

    @JsonProperty(value = "content")
    private String content;

    @JsonProperty(value = "writer")
    private String writer;

    @JsonProperty(value = "viewCnt")
    private int viewCnt;

    @JsonProperty(value = "noticeYn")
    private String noticeYn;

    @JsonProperty(value = "secretYn")
    private String secretYn;

    @JsonProperty(value = "deleteYn")
    private String deleteYn;

    @JsonProperty(value = "insertTime")
    private String insertTime;

    @JsonProperty(value = "updateTime")
    private String updateTime;

    @JsonProperty(value = "deleteTime")
    private String deleteTime;
}
