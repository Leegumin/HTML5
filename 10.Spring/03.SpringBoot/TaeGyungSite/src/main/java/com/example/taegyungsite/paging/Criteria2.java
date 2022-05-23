package com.example.taegyungsite.paging;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

/**
 * packageName : com.example.taegyungsite.paging
 * fileName : Criteria2
 * author : gumin
 * date : 2022-05-23
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-23         gumin          최초 생성
 */
@Data
// *@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
// *내부적으로 대문자가 오는 자리에 _와 소문자로 바꿔서 넣어주는 구조를 가짐
// *ex)  @JsonProperty("access_token") => 없어져도 됨
// *     private String accessToken; => private String accessToken;
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
// *criterion : 표준, Criteria -> 표준들
public class Criteria2 {
    // 현재 페이지 번호
    private int currentPageNo;

    // 페이지당 출력할 데이터 개수
    private int recordsPerPage;

    // 화면 하단에 출력할 페이지 사이즈
    // ex) << 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 >>
    private int pageSize;

    // 검색 키워드 ( 검색하고 싶은 단어 )
    private String searchKeyword;

    // 검색 유형 ( 제목, 내용, 작성자 )
    private String searchType;

    // 기본 생성자 : 페이지 초기화 용

    public Criteria2() {
        this.currentPageNo = 1;
        this.recordsPerPage = 10;
        this.pageSize = 10;
    }

    //    프론트 엔드단에서 쿼리스트링을 만들어서(자동) 날려주는 메소드
    //   쿼리스트링( Query Stirng ) : ?currentPageNo=5&recordsPerPage=10
    //   전통 ex) http://locahost:8080/board?currentPageNo=5&recordsPerPage=10
    //   Rest API ex) http://locahost:8080/board/currentPageNo/5/recordsPerPage/10
    public String makeQueryString(int pageNo) {

        // 빌더 패턴 : 생성자역활을 대신하는 디자인 패턴
        UriComponents uriComponents = UriComponentsBuilder.newInstance()
                                                          .queryParam("currentPageNo", pageNo)
                                                          .queryParam("recordsPerPage", recordsPerPage)
                                                          .queryParam("pageSize", pageSize)
                                                          .queryParam("searchType", searchType)
                                                          .queryParam("searchKeyword", searchKeyword)
                                                          .build()
                                                          .encode();

        return uriComponents.toUriString();
    }
}
