<template>
  <nav id="main-navigation">
    <div class="pull-left">
      <ul class="outer-menu">
        <!-- 대메뉴 : 첫 번째 about 메뉴 -->
        <li
          class="outer-menu-item"
          v-on:mouseover="isShow = true"
          v-on:mouseleave="isShow = false"
        >
          <span class="menu-title">About</span>
          <ul class="inner-menu" v-if="isShow">
            <!-- About -> 홈 소메뉴 -->
            <li class="inner-menu-item">
              <router-link to="/">Home</router-link>
            </li>
            <!-- About -> 회원가입 소메뉴 -->
            <li class="inner-menu-item">
              <router-link to="/register">Register</router-link>
            </li>
          </ul>
        </li>
        <!-- 두 번째 상품정보 메뉴 -->
        <li
          class="outer-menu-item"
          v-on:mouseover="isShow02 = true"
          v-on:mouseleave="isShow02 = false"
        >
          <span class="menu-title">장터</span>
          <!-- 상품정보 컵 소개 소메뉴 -->
          <ul class="inner-menu" v-if="isShow02">
            <li class="inner-menu-item">
              <router-link to="/socksMarket">양말마켓</router-link>
            </li>
          </ul>
        </li>
        <!-- 세번째 찾아오시는길 메뉴 -->
        <li
          class="outer-menu-item"
          v-on:mouseover="isShow03 = true"
          v-on:mouseleave="isShow03 = false"
        >
          <span class="menu-title">찾아오시는길</span>
          <!-- 찾아오시는 길 -> 데이터 소메뉴 -->
          <ul class="inner-menu" v-if="isShow03">
            <li class="inner-menu-item">
              <router-link
                to="#"
                >카카오맵</router-link
              >
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
  data() {
    return {
      isShow: false,
      isShow02: false,
      isShow03: false
    }
  },
};
</script>

<style>
@import "../../assets/css/navigation.css";
</style>