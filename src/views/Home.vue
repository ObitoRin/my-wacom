<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <h1>我的第一个脚手架项目</h1>
    <h2>我的名字：{{ name }}</h2>
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Home',
  data(){
    return{
      name: 'obito'
    }
  },
  components: {
    HelloWorld
  }
}
</script>
<style scope>
  .home > h1{
    background-color: salmon;
  }
</style>
