<template>
    <form id="signup" action="index.html" onsubmit="return checkPassword();">
      <div class="title"><h1 style="font-size: 21px">회원가입</h1></div>
      <div class="id">
        <input
          id="id"
          type="text"
          placeholder=" 아이디를 입력해 주세요."
          maxlength="14"
          required
        />
      </div>
      <div class="password">
        <input
          id="password1"
          type="password"
          placeholder=" 비밀번호를 입력해 주세요."
          maxlength="20"
          required
        />
      </div>
      <div class="passwordCheck">
        <input
          id="password2"
          type="password"
          placeholder=" 비밀번호를 다시 입력해 주세요."
          maxlength="14"
          required
        />
      </div>

      <div class="name">
        <input
          id="name"
          type="text"
          placeholder=" 이름을 입력해 주세요."
          maxlength="8"
          required
        />
      </div>
      <div class="phone">
        <input
          id="phone1"
          type="number"
          size="1"
          maxlength="3"
          min="0"
          max="999"
          placeholder=" 000"
          required
        />
        -
        <input
          id="phone2"
          type="number"
          size="3"
          minlength="3"
          min="0"
          max="9999"
          placeholder=" 0000"
          required
        />
        -
        <input
          id="phone3"
          type="number"
          size="3"
          minlength="3"
          min="0"
          max="9999"
          placeholder=" 0000"
          required
        />
      </div>
      <div class="email">
        <input
          id="email"
          name="mail"
          type="text"
          placeholder=" 이메일을 입력해 주세요."
          required
        />
      </div>
      <div class="datePicker">
        <input
          id="date"
          name="date"
          type="text"
          placeholder=" 생년월일을 선택해 주세요."
          required
        />
      </div>
      <button type="submit">가입하기</button>
      <!-- <button
        type="button"
        id="backToHome"
        onclick="location.href = 'index.html'"
      >
        메인페이지로 돌아가기
      </button> -->
    </form>
</template>

<script>
import checkPassword from "../util/checkPassword.js";

export default {
  methods: {
    // vue에서 만든 함수
    // 바닐라에서 만든 함수
    checkPassword() {
      checkPassword();
    },
  },
};
</script>

<style scoped>
@import "../assets/css/register_member.css";
</style>