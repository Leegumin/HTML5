<template>
  <div class="main">
    <div class="best">
      <h3>추천하는 관광지</h3>
      <!-- 1. slot 추가 -->
      <slot name="best"></slot>
    </div>
    <!-- props이용해서 데이터 받음 -->
    <div class="city">
      <h3>{{ ran_city.cityname }}</h3>
      <!-- 2. props 추가 -->
      <img :src="ran_city.pic" alt="이미지가 없습니다." />
    </div>
    <div class="footer">
      <!-- 3. slot 추가 -->
      <slot name="footer"></slot>
    </div>
  </div>
</template>

<script>
export default {
  // props 추가
  props: ["ran_city"],
};
</script>

<style>
.main {
  border: 4px Solid blue;
}
.best {
  border: 4px solid teal;
  margin: 4px;
}
.city {
  border: 4px solid lime;
  margin: 4px;
}
figcaption,
h3 {
  font-family: sans-serif;
  text-align: center;
  padding: 2px 0;
  width: 100%;
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 60%;
}
.footer {
  bottom: 0px;
  color: white;
  background-color: teal;
  width: 100%;
  text-align: center;
}
</style>