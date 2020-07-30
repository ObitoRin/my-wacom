<template>
    <div class="login">
        <div>
            <label for="uname">用户名：</label>
            <input type="text" v-model="uname" onblur="">
        </div>
        
        <div>
            <label for="uname">密码：</label>
            <input type="password" v-model="upwd" onblur="">
        </div>
        <button @click="login">登录</button>
    </div>
</template>
<script>
import qs from 'qs'

export default {
    name: 'login',
    data(){
        return{
            uname: '',
            upwd: '' 
        }
    },
    methods:{ 
        //登录请求后台接口
        login(){
            // post请求 qs模块 把对象转为字符串
            let data = qs.stringify({uname: this.uname, upwd: this.upwd})
            console.log(data)
            this.axios.post(
                '/user/login',
                data
            ).then((response)=>{
                console.log(response.data)
            })
        }
    }
}
</script>
<style lang="scss" scope>
    .login{
        background-color:rgab(0,0,0,.3);
    }
</style>