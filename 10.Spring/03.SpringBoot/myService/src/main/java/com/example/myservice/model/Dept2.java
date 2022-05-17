package com.example.myservice.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * packageName : com.example.myservice.model
 * fileName : Dept2
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Setter
@Getter
public class Dept2 {
<<<<<<< HEAD
    @JsonProperty(value = "dno")
=======
>>>>>>> 3d17d0532bef7097ac8cdec80a3512bfa026bf67
    private int dno;
    @JsonProperty(value = "dname")
    private String dname;
    @JsonProperty(value = "loc")
    private String loc;
}
