import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogin: sessionStorage.getItem('isLogin') || false,
    username: sessionStorage.getItem('username') || '',
    shopCart: [] || JSON.parse(sessionStorage.getItem('shopCart'))//商品购物车
  },
  mutations: {
    login_mutations(state, payload){
      state.isLogin = true
      // console.log(payload)
      state.username = payload.uname
    }
  },
  actions: {
  },
  modules: {
  }
})
