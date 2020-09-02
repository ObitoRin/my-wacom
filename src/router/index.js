import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Index from '../views/Index.vue'
import Product from '../views/Product.vue'
import Cart from '../views/Cart.vue'
import store from '../store/index.js'
import { message } from 'ant-design-vue';

Vue.use(VueRouter)

  const routes = [
    {
      path: '/cart',
      name: 'Cart',
      component: Cart,
      meta: {guard :true}//登录后才能访问
    },
    {
      path: '/product/:num',
      name: 'Product',
      component: Product
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    {
      path: '/',
      name: 'Index',
      component: Index
    }
]

const router = new VueRouter({
  routes
})

router.beforeEach((to,from,next)=> { 
  let isLogin = store.state.isLogin
  if(to.meta.guard){  
    if(isLogin){  //判断是否为true
      next()
    }else{
      message.error('请登录后再执行该操作！', 1, ()=>{
        next('/login')//不为true跳转到登录页面
      })
    }
  }else{
    next()//不为true往下执行
  }
})

export default router
