<template>
    <div class="login">
        <div class="logo">
            <img src="/img/user/logo.png">
        </div>
        <div class="content">
            <div class="left">
                <img src="/img/user/pic01.jpg">
            </div>
            <div class="right">
                <ul>
                    <li><img src="/img/user/wel.png"></li>
                    <li><input type="text" v-model="uname" placeholder="Wacom账号"></li>
                    <li><input type="password" v-model="upwd" placeholder="密码(9-32位字符)"></li>
                    <li><button @click="login">登录</button></li>
                </ul>
                <p>您还不是Wacom账号用户，立即<router-link to="/register">免费注册</router-link></p>
            </div>
        </div>

        <div class="text">
            <ul>
                <li><a href="javascript:;">使用条款</a></li>
                <li><a href="javascript:;">隐私条款</a></li>
                <li><a href="javascript:;">Cookie Notice</a></li>
            </ul>
            <p>Copyright © 2018 estore.wacom.com.cn 和冠科技（北京）有限公司All Rights Reserved. 京ICP备13037713号</p>
            <p>为了给您提供更好的购物体验，推荐使用谷歌、360急速、IE10及以上版本浏览器访问本商城。</p>
        </div>
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
                data,
                {headers:{'Content-Type':'application/x-www-form-urlencoded'}}

            ).then((response)=>{
                console.log(response.data)
                console.log(response.data.result)
                console.log(response.data.result.uname)
                if(response.data.code === 1){
                    //调用Vuex中Mutations来修改state中的状态
                    this.$store.commit('login_mutations',response.data.result)
                    this.$message.success('登录成功')
                    this.$router.push('/')
                }else{
                    this.$message.error('登录失败，用户名或密码错误')
                }
            })
        }
    }
}
</script>
<style lang="scss">
    *{box-sizing: border-box;}
    .login{
        width: 1000px;
        margin: 0 auto;
        padding-top: 25px;
        .content{
            display: flex;
            margin: 30px 0;
            .left{

            }
            .right{
                padding: 64px 28px 0 50px;
                ul{
                    li{
                        margin-bottom: 15px;
                        input{
                            width: 240px;
                            padding: 0 10px;
                            height: 32px;
                            border: #bcbcbc solid 1px;
                            line-height: 32px;
                            font-size: 14px;
                            color: #999;
                            &:focus{
                                border: 2px solid #000;
                                border-radius: 5px;
                            }
                        }
                        button{
                            width: 120px;
                            height: 40px;
                            border: 0;
                            border-radius: 5px;
                            background-color: #02A7E0;
                            color: #fff;
                        }
                    }
                }
                p{
                    border-top: #dcdcdc solid 1px;
                    padding: 25px 0 0 20px;
                    margin-top: 25px;
                    font-size: 12px;
                    a{
                        font-size: 16px;
                        color: #ff6000;
                    }
                }
            }
        }
        .text{
            padding: 35px 0;
            border-top: 1px solid #999999;
            ul{
                display: flex;
                justify-content: center;
                li{
                    margin: 0 3px;
                    a{
                        font-size: 12px;
                        color: #02a7e0;
                    }
                }
            }
            p{
                text-align: center;
                font-size: 12px;
                color: #999999;
                margin: 5px 0;
            }
        }
    }
</style>