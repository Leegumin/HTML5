<template>
  <div class = "container mt-3">
    <!--새 회원가입일 경우 submitted = false -->
    <div v-if = "!submitted">
      <!--*div mb-3 #1 시작-->
      <div class = "mb-3">
        <label for = "title"
               class = "form-label"
        >
          <strong>제목</strong>
        </label>
        <input type = "text"
               class = "form-control"
               id = "title"
               required
               name = "title"
               v-model = "qnaBoard.title"
        >
      </div>
      <!--*div mb-3 #1 끝-->
      <!--*div mb-3 #2 시작-->
      <div class = "mb-3">
        <label for = "content"
               class = "form-label"
        >
         <strong>내용</strong>
        </label>
        <input type = "text"
               class = "form-control"
               id = "content"
               required
               name = "content"
               v-model = "qnaBoard.content"
        >
      </div>
      <!--*div mb-3 #2 끝-->
      <!--*div mb-3 #3 시작-->
      <div class = "mb-3">
        <label for = "writer"
               class = "form-label"
        >
          <strong>작성자</strong>
        </label>
        <input type = "text"
               class = "form-control"
               id = "writer"
               required
               name = "writer"
               v-model = "qnaBoard.writer"
        >
      </div>
      <!--*div mb-3 #3 끝-->
      <div class = "mb-3">
        <button @click = "saveQnABoard"
                class = "btn btn-primary"
        >Submit
        </button>
      </div>
    </div>
    <!--저장 버튼을 눌렀을 경우-->
    <div v-else>
      <div class = "alert alert-success"
           role = "alert"
      >
        Save Board successfully!
      </div>
      <button @click = "newQnABoard"
              class = "btn btn-primary"
      >
        Add New Board
      </button>
    </div>
  </div>
</template>

<script>
import QnABoardDataService from '@/services/QnABoardDataService'

export default {
  name: 'add-qnaBoard',
  data () {
    // 객체, 변수 초기화
    return {
      qnaBoard : {
        id     : null,
        title  : '',
        content: '',
        writer : '',
      },
      submitted: false,
    }
  },
  methods: {
    // 저장 메소드 호출
    saveQnABoard () {
      // 회원 임시 객체 만들기
      var data = {
        title  : this.qnaBoard.title,
        content: this.qnaBoard.content,
        writer : this.qnaBoard.writer,
      }
      // 임시 회원 객체를 서버쪽으로 전달해서 DB에 insert 요청
      QnABoardDataService.create(data)
          // 성공하면 then
          .then(response => {
            this.qnaBoard.id = response.data.id
            this.submitted = true // DB insert 성공
          })
          // 실패하면 catch
          .catch(e => {
            alert(e)
          })
    },
    // 새 회원가입을 위한 빈 form을 만드는 메소드 (변수 초기화)
    newQnABoard () {
      this.submitted = false
      this.qnaBoard = {}
    },
  },
}
</script>

<style scoped>

</style>