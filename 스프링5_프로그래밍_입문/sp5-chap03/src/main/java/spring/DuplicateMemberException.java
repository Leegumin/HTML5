package spring;

/**
 * packageName : spring
 * fileName : DuplicateMemberException
 * author : gumin
 * date : 2022-05-24
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-24         gumin          최초 생성
 */
// 동일한 이메일이 존재할 경우 오류 발생
public class DuplicateMemberException extends RuntimeException {
    // *RuntimeException에서 message를 받아옴
    public DuplicateMemberException(String message) {
        super(message);
    }
}
