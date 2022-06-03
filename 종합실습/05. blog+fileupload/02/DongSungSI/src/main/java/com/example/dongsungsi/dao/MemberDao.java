package com.example.dongsungsi.dao;

import com.example.dongsungsi.model.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.dao
 * fileName : MemberDao
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 */
@Mapper
public interface MemberDao {

    // 화면에서 publish 버튼을 클릭할 때 적용되는 메소드
    // * List<Member> 배열을 반환

    // Title 검색을 위한 메소드
    List<MemberDTO> findByTitleContaining(String title);

    // 모든 데이터 목록 조회
    List<MemberDTO> findAll();

    // id에 해당하는 값을 조회
    // Optional : null을 방지하는 클래스
    Optional<MemberDTO> findById(Long id);

    // Member 테이블에 데이터 넣기 메소드
    int insertMember(MemberDTO member);

    // Member 테이블에 데이터 수정 메소드
    int updateMember(MemberDTO member);

    // Member 테이블에 데이터 삭제(수정) 메소드
    int deleteMember(Long id);

    // Member 테이블에 데이터 모두삭제(수정) 메소드
    int deleteAll();

}
