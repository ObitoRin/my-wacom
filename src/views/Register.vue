<template>
    <div class="register">
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
                    <li><span>用户名：</span><input type="text" @blur="checkuname" :class="{isSuccess: unameStateS, isError: unameStateE}" v-model="uname" placeholder="Wacom账号(6-12位字符)"></li>
                    <li><span>邮箱：</span><input type="text" @blur="checkuemail" :class="{isSuccess: uemailS, isError: uemailE}" v-model="uemail" placeholder="邮箱"></li>
                    <li><span>密码：</span><input type="password" @blur="checkupwd" :class="{isSuccess: upwdS, isError: upwdE}" v-model="upwd" placeholder="密码(9-32位字符)"></li>
                    <li><span>确认密码：</span><input type="password" @blur="checkconupwd" :class="{isSuccess: conupwdStateS, isError: conupwdStateE}" v-model="conupwd" placeholder="确认密码(9-32位字符)"></li>
                    <li><button @click="register">注册</button></li>
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
    name: 'Register',
    data(){
        return{
            uname: '',
            uemail: '',
            upwd: '',
            conupwd: '',
            unameStateS: null,
            unameStateE: null,
            uemailS: null,
            uemailE: null,
            upwdS: null,
            upwdE: null,
            conupwdStateS: null,
            conupwdStateE: null

        }
    },
    methods:{
        checkuname(){
            let uname = this.uname
            console.log(uname)
            let unameRegExp = /^[0-9A-Za-z_]{6,12}$/
            if(unameRegExp.test(uname)){
                this.unameStateS = true
                this.unameStateE = false
                return true
            }else{
                this.unameStateS = false
                this.unameStateE = true
                return false
            }
        },
        checkuemail(){
            let uemail = this.uemail
            console.log(uemail)
            let uemailRegExp = /[0-9a-zA-Z_.-]+[@][0-9a-zA-Z_.-]+([.][a-zA-Z]+){1,2}/
            if(uemailRegExp.test(uemail)){
                this.uemailS = true
                this.uemailE = false
                return true
            }else{
                this.uemailS = false
                this.uemailE = true
                return false
            }
        },
        checkupwd(){
            let upwd = this.upwd
            console.log(upwd)
            let upwdRegExp = /^[0-9A-Za-z_]{9,32}$/
            if(upwdRegExp.test(upwd)){
                this.upwdS = true
                this.upwdE = false
                return true
            }else{
                this.upwdS = false
                this.upwdE = true
                return false
            }
        },
        checkconupwd(){
            let conupwd = this.conupwd
            console.log(conupwd)
            if(conupwd === this.upwd){
                this.conupwdStateS = true
                this.conupwdStateE = false
                return true
            }else{
                this.conupwdStateS = false
                this.conupwdStateE = true
                return false
            }
        },
        register(){
            if(this.checkuname() && this.checkuemail() && this.checkconupwd() && this.checkupwd()){
                let data = qs.stringify({uname: this.uname, uemail: this.uemail, upwd: this.upwd})
                console.log(data)
                this.axios.post(
                    '/user/register',
                    data,
                    {headers:{'Content-Type':'application/x-www-form-urlencoded'}}
                ).then(response=>{
                    console.log(response.data)
                    if(response.data.code === 1){
                        this.$message.success('注册成功')
                        this.$router.push('/login')
                    }else{
                        this.$message.error('用户名或邮箱已存在，请重新输入',100)
                        //ant-message-custom-content ant-message-error
                    }
                })
            }else{
                this.$message.error('注册失败，请输入正确的格式')
            }
            
        }
    }
}
</script>
<style lang="scss">
    *{box-sizing: border-box;}
    .register{
        width: 1000px;
        margin: 0 auto;
        padding-top: 25px;
        .content{
            display: flex;
            .right{
                padding: 64px 28px 0 50px;
                ul{
                    li{
                        margin-bottom: 15px;
                        display: flex;
                        justify-content: space-between;
                        span{
                            line-height: 32px;
                        }
                        input{
                            width: 176px;
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
                        .isSuccess{
                            border-radius: 5px;
                            border: 2px solid #67C23A;
                        }
                        .isError{
                            border-radius: 5px;
                            border: 2px solid #F56C6C;
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
            padding-top: 35px;
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