<template>
  <div class="SocksMarket">
    <ProductCom />
    <ReviewCom />
  </div>
</template>

<script>
// @ is an alias to /src
import ProductCom from "@/components/SocksMarket/ProductCom.vue"
import ReviewCom from "@/components/SocksMarket/ReviewCom.vue"

export default {
  components: {
    ProductCom,
    ReviewCom,
  }
}
</script>

<style scoped>
@import "../assets/css/styles.css";
</style>