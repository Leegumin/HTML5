<template>
  <div class="home">
    <!-- slot02 예제 -->
    <!-- 1.자식 컴포넌트 태그 추가 -->
    <!-- 2.자식 컴포넌트 태그 사이에 도시 이름과, -->
    <!-- 설명을 출력하는 부분을 화면에 표시 -->

    <!-- 예시 1) -->
    <!-- <ChildComponent> -->
      <!-- cities -->
      <!-- <div v-for="(city, index) in cities" :key="index" slot="cities"> -->
        <!-- city.name -->
        <!-- <h4 slot="name">{{ city.name }}</h4> -->
        <!-- city.text -->
        <!-- <p slot="text">{{ city.text }}</p> -->
      <!-- </div> -->
    <!-- </ChildComponent> -->

    <!-- 예시 2) -->
    <ChildComponent>
      <div v-for="(city, index) in cities" :key="index">
        <h4>{{ city.name }}</h4>
        <p>{{ city.text }}</p>
      </div>
    </ChildComponent>
  </div>
</template>

<script>
// @ is an alias to /src
import ChildComponent from "@/components/ChildComponent.vue";

export default {
  name: "HomeView",
  data() {
    return {
      cities: [
        {
          name: "비엔나",
          text: "비엔나는 구경할 곳이 참 많은 도시 중의 하나이다.",
        },
        {
          name: "파리",
          text: "파리행 고속열차 속에서 친절한 사람들을 만났다.",
        },
        {
          name: "암스테르담",
          text: "암스테르담은 정말로 자전거가 많다.",
        },
      ],
      // city: {
      //   name: "비엔나",
      //   text: "비엔나는 구경할 곳이 참 많은 도시 중의 하나이다.",
      // },
    };
  },
  components: {
    ChildComponent
  },
};
</script>
