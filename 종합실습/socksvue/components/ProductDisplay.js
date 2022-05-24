app.component('product-display', {
  props   : {
    premium: {
      type    : Boolean,
      required: true,
    },
  },
  template:
    `
    <div class = "product-display">
        <div class = "product-container">
            <div class = "product-image">
                <!--이미지가 들어가는 영역-->
                <img :src = "image" alt = "이미지가 엄슴니다.">
                <!-- *=> <img v-bind:src = "image" alt = "이미지가 엄슴니다.">-->
            </div>
            <div class = "product-info">

                <!--computed 메소드 호출-->
                <h1>{{ title }}</h1>
                <p v-if = "onSale">{{ saleMessage }}</p>

                <p v-if = "inStock">In Stock</p>
                <p v-else>Out of Stock</p>

                <p>Shipping: {{ shipping }}</p>

                <!--ul 반복문-->
                <ul>
                    <li v-for = "detail in details">
                        {{ detail }}
                    </li>
                </ul>

                <ul>
                    <li v-for = "(variant, index) in variants" :key = "variant.id"
                        @mouseover = "updateImage(index)"
                        class = "color-circle" :style = "{'background-color' : variant.color}"
                    >
                        {{ variant.color }}
                    </li>
                </ul>
                <!--장바구니 추가 버튼-->
                <button class = "button" @click = "addToCart" :disabled = "!inStock"
                        :class = "{disabledButton : !inStock}"
                >Add To Cart
                </button>
                <!--* => v-on:click="addToCart">-->
            </div>
        </div>
    </div>
    `,
  data () {
    return {
      onSale         : true,
      product        : 'Socks',
      brand          : 'Vue Mastery',
      selectedVariant: 0,
      details        : ['50% cotton', '30% wool', '20% polyester'],
      variants       : [
        {
          id      : 2234,
          color   : 'green',
          images  : './assets/images/socks_01.jpg',
          quantity: 50,
        }, {
          id      : 2235,
          color   : 'blue',
          images  : './assets/images/socks_02.jpg',
          quantity: 0,
        }],
    }
  },
  methods : {
    addToCart () {
      // *자식에서 부모쪽으로 'add-to-cart' 이름으로 리턴값을 보냄
      this.$emit('add-to-cart', this.variants[this.selectedVariant].id)
    },
    updateImage (index) {
      // *이미지 경로 대신 숫자로 처리
      this.selectedVariant = index
    }, /*updateImage (variantImage) {
     this.image = variantImage
     },*/
  },
  computed: {
    title () {
      return this.brand + ' ' + this.product
    },
    image () {
      // *0번 인덱스 : socks_01.jpg
      // *1번 인덱스 : socks_02.jpg
      return this.variants[this.selectedVariant].images
    },
    inStock () {
      return this.variants[this.selectedVariant].quantity
    },
    saleMessage () {
      return this.brand + ' ' + this.product + ' is on sale!!!!!!!!!'
    },
    shipping () {
      if (this.premium) {
        return 'Free'
      }
      return '2.99$'
    },
  },
})