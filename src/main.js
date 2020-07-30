import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

//配置axios默认的请求路径
axios.defaults.baseURL = 'http://localhost:3000/'
//配置axios的post请求接收的响应头信息的content-type(请求类型)默认值为：application/x-www-form-urlencoded
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
Vue.prototype.axios = axios

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
