package com.example.boot_exam.paging;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

/**
 * packageName : com.example.guminsite.paging
 * fileName : Criteria
 * author : gumin
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         gumin          최초 생성
 */
@Getter
@Setter
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
@ToString
public class Criteria {
    // 현재 페이지 번호
    private int currentPageNo;

    // 페이지당 출력할 데이터 개수
    // ex) 1 page 당 10건
    private int recordsPerPage;

    // 화면 하단에 출력할 페이지 사이즈
    // << 1, 2, 3, 4, 5, 6, 7, 8 ,9 ,10 >>
    private int pageSize;

    // 검색 키워드
    private String searchKeyword;

    // 검색 유형
    private String searchType;


    public Criteria() {
        // 현재 페이지 1
        this.currentPageNo = 1;
        // 1페이지 당 15건
        this.recordsPerPage = 15;
        // 총 페이지 10
        this.pageSize = 10;
    }

    // 프론트 엔드 단에서 쿼리스트링을 자동으로 만들어서 날려주는 메소드
    // 전통적인 방법 쿼리스트링( Query String ) : http://localhost:8080/board?currentPageNo=5&recordsPerPage=10
    // 요즘 방법 Rest API : http://localhost:8080/board/currentPageNo/5/recordsPerPage/10
    public String makeQueryString(int pageNo) {
        // 빌더 패턴 : 생성자 역할을 대신하는 디자인 패턴
        UriComponents uriComponents =
                UriComponentsBuilder.newInstance()
                                    .queryParam("currentPageNo", pageNo)
                                    .queryParam("recordsPerPage", recordsPerPage)
                                    .queryParam("pageSize", pageSize)
                                    .queryParam("searchType", searchType)
                                    .queryParam("searchKeyword", searchKeyword)
                                    .build().encode();
        return uriComponents.toUriString();
    }
}
