<template>
  <div class = "container mt-3">
    <!--search 관련 div 시작-->
    <div class = "col-md-8">
      <div class = "input-group mb-3">
        <!--검색 입력 박스-->
        <input type = "text"
               class = "form-control"
               placeholder = "Search by Email"
               v-model = "searchEmail"
        />
        <!--검색 버튼-->
        <div class = "input-group-append">
          <button class = "btn btn-outline-dark"
                  type = "button"
                  @click = "page =1; retrieveCustomers();"
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
          <option v-for = "size in pageSizes"
                  :key = "size"
                  :value = "size"
          >{{ size }}
          </option>
        </select>
      </div>
      <!--Todo : page bar 추가-->
      <b-pagination v-model = "page"
                    :total-rows = "count"
                    :per-page = "pageSize"
                    prev-text = "Prev"
                    next-text = "Next"
                    @change = "handlePageChange"
      >
      </b-pagination>
    </div>
    <!--Todo: page bar 끝-->

    <table class = "table">
      <thead>
      <tr>
        <th scope = "col">First Name</th>
        <th scope = "col">Last Name</th>
        <th scope = "col">Email</th>
        <th scope = "col">Phone</th>
        <th scope = "col">Actions</th>
      </tr>
      </thead>
      <!--#조회 데이터 생 부분-->
      <!--Todo: :class, @click 추가-->
      <tbody v-for = "(customer, index) in customers"
             :key = "index"
             :class = "{ active: index == currentIndex}"
             @click = "setActiveCustomer(customer,index)"
      >
      <tr>
        <td>{{ customer.firstName }}</td>
        <td>{{ customer.lastName }}</td>
        <td>{{ customer.email }}</td>
        <td>{{ customer.phone }}</td>
        <!--* http://localhost8080/customers/customer.id 형태의 주소로 이동-->
        <!--* :href -> v-bind:href, customer.id 값을 가져오기 위해서는 <script>의 data()와 바인딩할 필요가 있음-->
        <td><a :href = "'/customers/' + customer.id"
               class = "btn btn-primary"
        >Edit</a></td>
      </tr>
      </tbody>
    </table>

  </div>
</template>

<script>
import CustomerDataService from '@/services/CustomerDataService'

export default {
  // eslint-disable-next-line
  name: 'customers',
  data () {
    return {
      customers: [],

      // 페이징처리를 위한 변수
      currentCustomer: null,
      currentIndex   : -1,
      searchEmail    : '',
      page           : 1, // 페이지 번호
      count          : 0,
      pageSize       : 3, // 한 페이지당 건수
      pageSizes      : [3, 6, 9], // 한 페이지당 건수
    }
  },
  methods: {
    getRequestParams (searchEmail, page, pageSize) {
      let params = {}

      // *searchEmail 값이 있으면 params 객체에 email로 저장
      if (searchEmail) {
        params['email'] = searchEmail
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
    // 모든 회원 조회 서비스 호출
    retrieveCustomers () {
      // params 변수값 대입
      const params = this.getRequestParams(
          this.searchEmail,
          this.page,
          this.pageSize,
      )
      // back-end(스프링)으로 전체 데이터를 요청(페이징 처리)
      CustomerDataService.getAll(params)
          // 성공하면 then으로 들어옴
          // *response : 헤더(상태정보, 쿠키 등), 바디(json) 등을 포함하고 있음
          // *data : back-end(스프링)에서 보내준 customer 객체가 담김
          // *.then(매개변수이름 => { : 매개변수 이름 굳이 response가 아니라도 상관없음. then에서 매개변수로 들어오면 response
          // *역할을 한다는 것을 직관적으로 나타내주기 위해 response로 매개변수 이름을 정한 것일 뿐임.
          .then(response => {
            // *back-end(스프링)에서 같은 주소를 가진 메서드 실행시 성공하면 보내주는 데이터를 받아옴
            // 임시변수 customers, totalItems( 서버의 결과 데이터가 들어옴 )
            const {
                    customers,
                    totalItems,
                  } = response.data
            this.customers = customers // 객체
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
      this.retrieveCustomers()

    },
    // * 역할 : 페이지당 건수가 변경되면 다시 조회
    handlePageSizeChange (event) {
      // 한 페이지당 건수 저장
      this.pageSize = event.target.value // Select 박스 변경시 값을 가져옴
      this.page = 1
      // 다시 데이터 조회
      this.retrieveCustomers()
    },

    // 목록 삭제 후 화면 다시 로딩할때 사용하는 메소드
    // 새로고침 메소드
    refreshList () {
      this.currentCustomer = null
      this.currentIndex = -1
      this.retrieveCustomers()
    },
    // vue의 data 변수에 값을 저장하는 메소드(클릭했을 때 현재값 저장)
    setActiveCustomer (customer, index) {
      this.currentCustomer = customer
      this.currentIndex = index
    },
  },
  // 화면이 뜨자마자 실행되는 이벤트
  mounted () {
    // 모든 회원 조회 메서드 실행
    this.retrieveCustomers()
  },
}
</script>

<style scoped>
</style>