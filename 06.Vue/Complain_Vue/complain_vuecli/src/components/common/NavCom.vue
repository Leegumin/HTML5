<template>
  <div class="nav">
    <nav id="main-navigation">
      <div class="pull-left">
        <ul class="outer-menu">
          <!-- 대메뉴 -->
          <li
            class="outer-menu-item"
            @mouseover="isShow01 = true"
            @mouseleave="isShow01 = false"
          >
            <span class="menu-title">About</span>
            <!-- 소메뉴 -->
            <ul class="inner-menu" v-if="isShow01">
              <li class="inner-menu-item">
                <router-link to="/">Home</router-link>
              </li>
              <li class="inner-menu-item">
                <router-link to="/complain">Complain</router-link>
              </li>
              <li class="inner-menu-item">
                <router-link to="/registerMember">회원가입</router-link>
              </li>
            </ul>
          </li>
          <li
            class="outer-menu-item"
            @mouseover="isShow02 = true"
            @mouseleave="isShow02 = false"
          >
            <span class="menu-title">상품정보</span>
            <ul class="inner-menu" v-if="isShow02">
              <li class="inner-menu-item">
                <router-link to="/infoCup">컵소개</router-link>
              </li>
            </ul>
          </li>
          <li
            class="outer-menu-item"
            @mouseover="isShow03 = true"
            @mouseleave="isShow03 = false"
          >
            <span class="menu-title">찾아오시는길</span>
            <ul class="inner-menu" v-if="isShow03">
              <li class="inner-menu-item">
                <router-link to="#">데이터</router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="pull-right">
        <div class="search-bar">
          <form>
            <input type="text" class="input-search" />
            <input type="submit" class="input-search-submit" value="검색" />
          </form>
        </div>
      </div>
    </nav>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isShow01: false,
      isShow02: false,
      isShow03: false,
    };
  },
};
</script>
<style scoped>
@import "../../assets/css/navigation.css";
</style>