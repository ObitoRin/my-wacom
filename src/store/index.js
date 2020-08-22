import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogin: false,
    username: ''
  },
  mutations: {
    login_mutations(state, payload){
      state.isLogin = true
      state.username = payload.uname
    }
  },
  actions: {
  },
  modules: {
  }
})
