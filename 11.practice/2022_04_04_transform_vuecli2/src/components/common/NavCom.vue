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
            <!-- About -> Complain 소메뉴 -->
            <li class="inner-menu-item">
              <router-link to="#">Question</router-link>
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
                to="https://map.kakao.com/?urlX=969234&urlY=464870&urlLevel=3&itemId=14967901&q=%EC%97%90%EC%9D%B4%EC%9B%90%ED%94%84%EB%9D%BC%EC%9E%90&srcid=14967901&map_type=TYPE_MAP"
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