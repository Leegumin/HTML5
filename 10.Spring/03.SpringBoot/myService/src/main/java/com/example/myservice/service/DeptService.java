package com.example.myservice.service;

import com.example.myservice.model.Dept;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptService
 * author : ds
 * date : 2022-05-12
 * description : 부서정보 서비스 인터페이스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */

public interface DeptService {
    public List<Dept> selectList();
}
