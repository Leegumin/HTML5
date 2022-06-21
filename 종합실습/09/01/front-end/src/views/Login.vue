<template>
  <!--부트스트랩 화면 배치 : col(열)로 12등분-->
  <!--Extra small (for smartphone)   .col-xs-* : 항상 가로로 배치 -->
  <!--Small (for tablets)   .col-sm-* : 768px 이하에서 세로로 표시 시작-->
  <!--Medium (for laptops)   .col-md-* : 992px 이하에서 세로로 표시 시작-->
  <!--Large (for laptops / desktops)   .col-lg-* :1200px 이하에서 세로로 표시 시작 -->
  <!--col-md-12 : medium화면 size 이하에서 세로배치하겠다. 12컬럼 크기로 보겠다-->
  <!--로그인 페이지 구현-->
  <div class = "col-md-12">
    <div class = "card card-container">
      <img src = "//ssl.gstatic.com/accounts/ui/avatar_2x.png"
           alt = "None"
           id = "profile-img"
           class = "profile-img-card"
      />
      <!--*@submit.prevent = "handleLogin" : button(맨 하단에 있음)이 가지는 기본 동작 submit를 낚아채서 handleLogin을 실행하게 만듬-->
      <form name = "form"
            @submit.prevent = "handleLogin"
      >
        <!--입력양식들 : 유효성 체크(Vee-Validation)-->
        <!--유저 네임(아이디) 시작-->
        <div class = "form-group">
          <label for = "username">UserName</label>
          <input type = "text"
                 v-model = "user.username"
                 v-validate = "'required'"
                 class = "form-control"
                 name = "username"
          >
          <!--error.has('username') : 유저네임을 입력 안해서 참값이 되면 오류 노출-->
          <div v-if = "errors.has('username')"
               class = "alert alert-danger"
               role = "alert"
          >
            UserName is required!
          </div>
        </div>
        <!--유저 네임(아이디) 끝-->
        <!--비밀번호 시작-->
        <div class = "form-group">
          <label for = "password">Password</label>
          <input type = "password"
                 v-model = "user.password"
                 v-validate = "'required'"
                 class = "form-control"
                 name = "password"
          >
          <!--error.has('password') : 패스워드를 입력 안해서 참값이 되면 오류 노출-->
          <div v-if = "errors.has('password')"
               class = "alert alert-danger"
               role = "alert"
          >
            Password is required!
          </div>
        </div>
        <!--비밀번호 끝-->
        <!--Login 버튼-->
        <div class = "form-group">
          <button class = "btn btn-primary btn-block"
                  :disabled = "loading"
          ><span v-show = "loading"
                 class = "spinner-border spinner-border-sm"
          ></span>
            <span>Login</span>
          </button>
        </div>
        <div class = "form-group">
          <div v-if = "message"
               class = "alert alert-danger"
               role = "alert"
          >
            {{ message }}
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import User from '@/models/user'

export default {
  /*eslint-disable*/
  name: 'Login',
  data () {
    return {
      user   : new User('', ''),
      loading: false,
      message: '',
    }
  },
  computed: {
    // loggedIn = false or true
    loggedIn () {
      return this.$store.state.auth.status.loggedIn()
    },
  },
  methods : {
    // 로그인 메소드 정의
    handleLogin () {
      // *loading 값이 true 이면 로딩바가 돌아감
      this.loading = true
      // Vee-Validation npm : 뷰에서 유효성을 체크하는 모듈
      // validateAll : v-validate 체크해서 모두 true, false인지 확인
      // 값이 isValid = true 혹은 false
      this.$validator.validateAll().then(isValid => {
        // 유효성 체크가 걸린 입력박스가 하나라도 에러가 나면 false
        // isValid = false => 함수종료
        // *만약 isValid가 false라면(유효성 체크 false값이라는 소리) 로딩바 중지
        if (!isValid) {
          // *loading 값이 false 이면 로딩바가 중지됨
          this.loading = false
          return
        }
        // isValid가 로그인 절차 진행
        // springBoot 서버와 통신
        if (this.user.username && this.user.password) {
          // springBoot로 username, password를 전송해서 로그인을 진행시킴
          // dispatch : 공유저장소의 비동기 메소드를 호출기능, login기능 호출
          this.$store.dispatch('auth/login', this.user)
              // 결과가 성공적이면 첫번째 변수
              // 실패하면 두번째 변수
              // then, catch대신 then 안에 다 구현해놓은 형태임
              .then(
                  // 성공
                  () => {
                    // 로그인 성공시 프로필로 자동 이동
                    this.$router.push('/profile')
                  },
                  // 실패
                  error => {
                    this.loading = false
                    this.message = (error.message || error.toString())
                  },
              )
        }
      })
    },
  },
  // 화면이 뜨자마자 실행되는 이벤트
  // create(Vue 객체가 최초 만들어질 때 실행됨), mounted(화면 모두 뜰 때 실행됨)
  // 로그인 된 상태에서 로그인 화면으로 갈 때
  created () {
    // 로그인이 됐으면 loggedIn = true -> profile 강제 이동
    // 로그인이 안됐으면 loggedIn = false -> 아무일도 없음
    if (this.loggedIn) {
      // profile 강제 이동
      this.$router.push('/profile')
    }
  },
}

</script>

<style scoped>
/* *@import "styles.css" => scoped 예약어가 혀옹되지 않음(문법만 가능)*/
/* *@import "styles.scss(혹은 sass)" => scoped 예약어가 혀옹됨(따로 컴파일러 설치 필요)*/
label {
  display: block;
  margin-top: 10px;
}

.card-container.card {
  max-width: 350px !important;
  padding: 40px 40px;
}

.card {
  background-color: #f7f7f7;
  padding: 20px 25px 30px;
  margin: 0 auto 25px;
  margin-top: 50px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
  width: 96px;
  height: 96px;
  margin: 0 auto 10px;
  display: block;
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
}
</style>