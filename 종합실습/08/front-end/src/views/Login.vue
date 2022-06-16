<template>

</template>

<script>
import User from '@/models/user'
/*eslint-disable*/
export default {
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
  methods: {},
  // 화면이 뜨자마자 실행되는 이벤트
  // create(Vue 객체가 최초 만들어질 때 실행됨), mounted(화면 모두 뜰 때 실행됨)
  created () {
    // 로그인이 됐으면 loggedIn=true
    // 로그인이 안됐으면 loggedIn=false

    if (this.loggedIn) {
      // profile 페이지로 강제 이동
      this.$router.push("/profile")
    }
  }

}
</script>

<style scoped>

</style>