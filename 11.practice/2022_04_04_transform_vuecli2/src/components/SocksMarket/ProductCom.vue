<template>
  <div>
    <!-- 장바구니 카운트 수치 -->
    <div class="cart">Cart: {{ cart.length }}</div>

    <!-- 상품정보 부분 -->
    <div class="product-display">
      <div class="product-container">
        <div class="product-image">
          <img id="productImg"
            :class="{ 'out-of-stock-img': !InStock }"
            :src="image"
            :alt="image"
          />
        </div>

        <div class="product-info">
          <h1>{{ title }}</h1>
          <h1 v-if="onSale">{{ saleMessage }}</h1>
          <p v-if="InStock">InStock</p>
          <p v-else>Out of Stock</p>
          <p>Shipping : {{ shipping }}</p>
          <ul>
            <li v-for="(item, index) in details" :key="index">
              {{ item }}
            </li>
          </ul>
          <div
            v-for="(item, index) in variants"
            :key="index"
            @mouseover="updateImage(index)"
            class="color-circle"
            :style="{ backgroundColor: item.color }"
          ></div>
          <button
            class="button"
            @click="addToCart"
            :class="{ disabledButton: !InStock }"
            :disabled="!InStock"
          >
            Add To Cart
          </button>
          <button class="button" @click="DeleteToCart">Delete To Cart</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cart: [],
      premium: true,
      product: "Socks",
      brand: "Vue Mastery",
      selectedVariant: 0,
      reviews: [],
      /* computed image()로 대체 */
      // image: "./assets/images/socks_01.jpg",
      /* computed image()로 대체 */
      // InStock: false,
      details: ["50% cooton", "30% wool", "20% polyester"],
      variants: [
        {
          id: 2234,
          color: "green",
          image: require("../../assets/img/socks_01.jpg"),
          quantity: 50,
        },
        {
          id: 2235,
          color: "blue",
          image: require("../../assets/img/socks_02.jpg"),
          quantity: 0,
        },
      ],
    };
  },
  methods: {
    addToCart() {
      this.cart.push(this.variants[this.selectedVariant].id)
    },
    DeleteToCart() {
      let index = this.cart.indexOf(this.variants[this.selectedVariant].id)
      if(index > -1){this.cart.splice(index, 1)}
    },
    updateImage(index) {
      this.selectedVariant = index;
    },
    addReview(review) {
      this.reviews.push(review);
    },
  },
  /* computed: 양방향 바인딩(binding) 기술 */
  /* 데이터를 감시하다가 변경되면 자동 화면 갱신을 시켜줌 */
  /* 데이터가 변경 안되도 화면에 보여줌 -> 성능 개선의 효과(미리 결과 데이터를 임시 저장공간(캐시)에 저장해 두기 때문) */
  /* 때문에 methods에는 주로 이벤트(click, mouseoverm, omuseleave 등) */
  /* 때문에 computed에는 매개변수가 없거나, 데이터가 실시간으로 변화는 계산식 */
  computed: {
    title() {
      return `${this.brand} ${this.product}`;
    },
    saleMessage() {
      return `${this.brand} ${this.product} is on sale!!`;
    },
    image() {
      return this.variants[this.selectedVariant].image;
    },
    onSale() {
      return false;
    },
    InStock() {
      // return this.variants[this.selectedVariant].quantity > 0 ? 1:0
      /* 혹은 어차피 1 이상은 true, 0은 false 값을 가지기 때문에 삼항 빼도 됨 */
      return this.variants[this.selectedVariant].quantity;
    },
    shipping() {
      return this.premium ? "Free" : "$" + 2.99;
    },
  },
};
</script>
