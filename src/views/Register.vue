<template>
    <div class="regisger">
        <div>
            <label for="uname">用户名：</label>
            <input type="text" v-model="uname" onblur="">
            <span id="uname_msg"></span>    
        </div>
        <div> 
            <label for="email">邮箱：</label>
            <input type="email" v-model="uemail" onblur="">
            <span id="email_msg"></span>
        </div>
        <div>
            <label for="uname">密码：</label>
            <input type="password" v-model="upwd" onblur="">
            <span id="upwd_msg"></span>
        </div>
        <button @click="register">注册</button>
    </div>
</template>

<script>
import qs from 'qs'
export default {
    name: 'Register',
    data(){
        return{
            uname: '',
            uemail: '',
            upwd: ''
        }
    },
    methods:{
        register(){
            let data = qs.stringify({uname: this.uname, uemail: this.uemail, upwd: this.upwd})
            console.log(data)
            this.axios.post(
                '/user/register',
                data,
                { 'content-type': 'application/x-www-form-urlencoded' }
            ).then(response=>{
                console.log(response.data)
            })
        }
    }
}
</script>
<style lang="scss" scope>
    
</style>