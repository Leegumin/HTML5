const app = Vue.createApp({
  data () {
    return {
      cart: [],
      // 자식 컴포넌트로 데이터 전달용
      prem: true,
    }
  },
  methods: {
    // *자식 컴포넌트에서 'add-to-cart'라는 이름으로 id값이 넘어옴
    updateCart (id) {
      this.cart.push(id)
    },
  },
})