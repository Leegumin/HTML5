<template>
  <div id="app">
    {{ name }}
    <child-component :childmessage="message"></child-component>
  </div>
</template>

<script>
import ChildComponent from "./components/ChildComponent.vue"

export default {
  name: 'App',
  components:{
    "child-component": ChildComponent
  },
  data(){
    return{
      name: "props를 이용한 데이터 전달",
      message: "부모 컴포넌트로부터 전달"
    }
  }
}
</script>

<style scoped>
#app {
  background: blue;
  padding: 6px;
  color: white;
}

.box {
  background: teal;
  margin-top: 10px;
}
</style>>

