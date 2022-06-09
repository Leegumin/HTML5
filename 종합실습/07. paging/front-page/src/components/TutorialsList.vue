<template>
  <div class = "list row">

    <!--search 관련 div 시작-->
    <div class = "col-md-8">
      <div class = "input-group mb-3">
        <!--검색 입력 박스-->
        <input type = "text"
               class = "form-control"
               placeholder = "Search by title"
               v-model = "searchTitle"
        />
        <!--검색 버튼-->
        <div class = "input-group-append">
          <button class = "btn btn-outline-secondary"
                  type = "button"
                  @click = "page = 1; retrieveTutorials();"
          >
            Search
          </button>
        </div>
      </div>
    </div>
    <!--search 관련 div 끝-->

    <!--Todo : page bar 태그 추가-->
    <div class = "col-md-12">
      <div class = "mb-3">
        Items per Page:
        <select v-model = "pageSize"
                @change = "handlePageSizeChange($event)"
        >
          <option v-for = "size in pageSize"
                  :key = "size"
                  value = "size"
          >{{ size }}
          </option>
        </select>
      </div>
      <!--Todo : page bar 추가-->
      <b-pagination v-model = "page"
                    :total-rows = "count"
                    :per-page = "pageSize"
                    :prev-text = "Prev"
                    :next-text = "Next"
                    @change = "handlePageChange"
      >
      </b-pagination>
    </div>
    <!--Todo: page bar 끝-->

    <!--목록을 보여주는 div 시작-->
    <div class = "col-md-6">
      <h4>Tutorials List</h4>
      <!--제목 목록-->
      <ul class = "list-group">
        <li class = "list-group-item"
            :class = "{ active: index == currentIndex}"
            v-for = "(tutorial, index) in tutorials"
            :key = "index"
            @click = "setActiveTutorial(tutorial,index)"
        >
          {{ tutorial.title }}
        </li>
      </ul>
      <!--모든 목록 삭제 버튼-->
      <button class = "m-3 btn btn-sm btn-danger"
              @click = "removeAllTutorials"
      >Remove All
      </button>
    </div>
    <!--목록을 보여주는 div 끝-->

    <!--상세 정보를 보여주는 div 시작-->
    <div class = "col-md-6">
      <!--currentTutorial != null 이면 -->
      <div v-if = "currentTutorial">
        <h4>Tutorial</h4>
        <div>
          <label><strong>Title: {{ currentTutorial.title }}</strong></label>
        </div>

        <div>
          <label><strong>Description: {{ currentTutorial.description }}</strong></label>
        </div>

        <div>
          <label><strong>Status: {{ currentTutorial.published == 'Y' ? 'Published' : 'Pending' }}</strong></label>
        </div>
        <!--link 추가-->
        <router-link :to = "'/tutorials/' + currentTutorial.id"
                     class = "badge badge-primary"
        >
          Edit
        </router-link>
      </div>
      <!--currentTutorial == null 이면 -->
      <div v-else>
        <br>
        <p>Please click on a Tutorial...</p>
      </div>
    </div>
    <!--상세 정보를 보여주는 div 끝-->
  </div>

</template>

<script>
// 화면 : Tutorial 데이터 추가하는 화면
import TutorialDataService from '../services/TutorialDataService'

export default {
  name: 'tutorials-list',
  data () {
    // tutorials 배열 객체, 변수들 초기화
    return {
      tutorials      : [],
      currentTutorial: null,
      currentIndex   : -1,

      // 페이징처리를 위한 변수
      searchTitle: '',
      page       : 1, // 페이지 번호
      count      : 0,
      pageSize   : 3, // 한 페이지당 건수
      pageSizes  : [3, 6, 9], // 한 페이지당 건수
    }
  },
  methods: {
    // springboot 쪽으로 URL params(매개변수)를 전송
    // * ex) http://localhost:8000/api/tutorials?title=''&page=1&size=3
    // * ?title=''&page=1&size=3 :요 부분을 만들기 위함
    getRequestParams (searchTitle, page, pageSize) {
      let params = {}

      // *searchTitle 값이 있으면 params 객체에 title로 저장
      if (searchTitle) {
        params['title'] = searchTitle
      }
      // *page 값이 있으면 params 객체에 page로 저장
      if (page) {
        params['page'] = page - 1
      }
      // *pageSize 값이 있으면 params 객체에 size로 저장
      if (pageSize) {
        params['size'] = pageSize
      }

      return params
    },
    // *retrieve : 검색하다
    retrieveTutorials () {
      // params 변수값 대입
      const params = this.getRequestParams(
          this.searchTitle,
          this.page,
          this.pageSize,
      )
      // back-end(스프링)으로 전체 데이터를 요청(페이징 처리)
      TutorialDataService.getAll(params)
          // 성공하면 then으로 들어옴
          // *response : 헤더(상태정보, 쿠키 등), 바디(json) 등을 포함하고 있음
          // *data : back-end(스프링)에서 보내준 tutorial 객체가 담김
          // *.then(매개변수이름 => { : 매개변수 이름 굳이 response가 아니라도 상관없음. then에서 매개변수로 들어오면 response
          // *역할을 한다는 것을 직관적으로 나타내주기 위해 response로 매개변수 이름을 정한 것일 뿐임.
          .then(response => {
            // *back-end(스프링)에서 같은 주소를 가진 메서드 실행시 성공하면 보내주는 데이터를 받아옴
            // 임시변수 tutorials, totalItems( 서버의 결과 데이터가 들어옴 )
            const {
                    tutorials,
                    totalItems,
                  } = response.data
            this.tutorials = tutorials // 객체
            this.count = totalItems // 총 건수

            // *데이터가 잘 들어왔는지 로그 확인
            console.log(response.data)
          })
          // 실패하면 에러 출력
          .catch(e => {
            console.log(e)
          })
    },
    // Todo : 메소드 2개 추가, handlePageChange, handlePageSizeChange
    // * 역할 : 현재 페이지번호에 해당하는 데이터 다시 조회
    handlePageChange (value) {
      // 페이지번호 저장
      this.page = value
      // 다시 데이터 조회
      this.retrieveTutorials()

    },
    // * 역할 : 페이지당 건수가 변경되면 다시 조회
    handlePageSizeChange (event) {
      // 한 페이지당 건수 저장
      this.pageSize = event.target.value // Select 박스 변경시 값을 가져옴
      this.page = 1
      // 다시 데이터 조회
      this.retrieveTutorials()
    },

    // 목록 삭제 후 화면 다시 로딩할때 사용하는 메소드
    // 새로고침 메소드
    refreshList () {
      this.currentTutorial = null
      this.currentIndex = -1
      this.retrieveTutorials()
    },
    // vue의 data 변수에 값을 저장하는 메소드(클릭했을 때 현재값 저장)
    setActiveTutorial (tutorial, index) {
      this.currentTutorial = tutorial
      this.currentIndex = index
    },
    // 모든 목록 삭제 메소드
    removeAllTutorials () {
      // back-end(spring) 쪽으로 전체데이터 삭제 요청
      TutorialDataService.deleteAll()
          // *성공하면 then으로 들어옴
          .then(response => {
            console.log(response.data)
            // 모든 데이터를 삭제했으므로 새로고침 메소드를 실행
            this.refreshList()
          })
          // *실패하면 catch으로 들어옴
          .catch(e => {
            console.log(e)
          })
    },
  },
  // 최초 화면이 로딩될때(뜰때) 실행되는 이벤트
  mounted () {
    // 전체 목록 가져오기 메소드 호출
    this.retrieveTutorials()
  },
}
</script>

<style scoped>
.list {
  text-align: left;
  max-width: 750px;
  margin: auto;
}
</style>