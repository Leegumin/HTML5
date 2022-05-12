<template>
  <div id="content">
    <section id="main-section">
      <article>
        <div class="nav-bar"></div>

        <!-- 1. 클릭시 장바구니 개수 표시 -->
        <div class="cart">장바구니개수({{ cart }})</div>

        <div class="product-display">
          <div class="product-container">
            <div class="product-image">
              <!-- 2. 이미지 변경   -->
              <img :src="image" />
            </div>

            <div class="product-info">
              <!-- 3. 상품명을 data 변수에 추가 -->
              <h1>{{ product }}</h1>
              <!-- 4. 목록을 반복문으로 표시 -->
              <ul>
                <li v-for="(detail, index) in details" :key="index">
                  {{ detail }}
                </li>
                <!-- <li>50% cotton</li>
                <li>30% wool</li>
                <li>20% polyester</li> -->
              </ul>

              <!-- 5. 뷰 데이터로 id, color, image 객체배열을 정의하고 반복문으로 수정후 출력 -->
              <!-- 5. id : 임의숫자4자리 -->
              <!-- 5. color : blue, green  -->
              <!-- 5. image : 이미지 경로 설정 -->
              <div
                v-for="(varint, index) in varints"
                :key="index"
                @mouseover="updateImage(variant.image)"
                class="color-circle"
                :style="{ backgroundColor: variant.color }"
              ></div>
              <!-- 6. 장바구니 버튼 클릭 시 상단 장바구니개수( ) 출력위치에 표시 -->
              <button class="button" @click="addToCart">Add to Cart</button>
            </div>
          </div>
        </div>
      </article>
    </section>
  </div>
</template>

<script>
export default {
  name: "SocksView",
  data() {
    return {
      cart: 0,
      product: "Socks",
      image: require("@/assets/images/socks_green.jpg"),
      details: ["50% cotton", "30% wool", "20% polyester"],
      variants: [
        {
          id:2234,
          color: "green",
          image: require("@/assets/images/socks_green.jpg")
        },
        {
          id:2234,
          color: "blue",
          image: require("@/assets/images/socks_blue.jpg")
        }
      ],
    };
  },
  methods: {
    addToCart() {
      this.cart += 1
    }
  },
};
</script>

<style lang="scss" scoped>
@import "@/assets/css/socks.css";
</style>>