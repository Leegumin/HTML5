package com.example.myservice.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * packageName : com.example.myservice.model
 * fileName : Dept4
 * author : ds
 * date : 2022-05-16
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-16         ds          최초 생성
 */
@Setter
@Getter
public class Dept4 {
    private int dno;
    @JsonProperty(value = "dname")
    private String dname;
    @JsonProperty(value = "loc")
    private String loc;
}
