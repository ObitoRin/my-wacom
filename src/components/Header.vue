<template>
    <header>
        <div class="top-box">
            <div class="left">
                <span>欢迎来到Wacom官方商城！</span>
                <span>在线客服(周一至周日9:00-18:00)</span>
            </div>

            <div class="right">
                <ul>
                    <li><router-link to="/login">登录</router-link><span></span></li>
                    <li><router-link to="/register">注册</router-link><span></span></li>
                    <li>
                        <a href="javascript:;">关于Wacom</a>
                        <img src="../../public/img/index/a-icon.png" alt="">
                        <span></span>
                        <ul class="down-box">
                            <li>
                                <img src="../../public/img/index/olia.png" alt="">
                                <a href="javascript:;">官方微博</a>
                            </li>
                            <li>
                                <img src="../../public/img/index/olia.png" alt="">
                                <a href="javascript:;">品牌介绍</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="javascript:;">我的订单</a></li>
                    <li><a href="javascript:;">购物车</a></li>
                </ul>
            </div>
        </div>
    </header>
</template>

<script>
export default {
   
}
</script>

<style lang="scss">
    header{
        background: #000;

        .top-box{
            width: 1200px;
            height: 50px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;

            .left{
                flex-grow: 2;
                span{
                    font-size: 14px;
                    cursor: pointer;
                }
                span:first-child{ 
                    color: #fff;          
                }
                span:last-child{
                    margin-left: 35px;
                    color: #00a1e1;
                }
            }

            .right{
                flex-grow: 1;
                ul{
                    display: flex;
                    justify-content: center;
                    margin-bottom: 0;
                    li{
                        margin: 0 15px;
                        display: flex;
                        align-items: center;
                        a{
                            display: inline-block;
                            line-height: 50px;
                            color: #fff;
                            &:hover{
                                color:#02a7e0;
                            }
                        }
                        span{
                            width: 1px;
                            height: 17px;
                            position: absolute;
                            background-color: #ccc;
                        }
                    }
                    li:nth-child(1), li:nth-child(2){
                        position: relative;
                        span{
                            left: 41px;
                        }
                    }
                    li:nth-child(3){
                        position: relative;
                        &:hover{
                            .down-box{
                                display: flex;
                            }
                        }
                        span{
                            left: 100px;
                        }
                        img{
                            transform: translateX(5px);
                        }
                        .down-box{
                            width: 111px;
                            display: flex;
                            flex-wrap: wrap;;
                            position: absolute;
                            top: 49px;
                            left: -17px;
                            border: 1px #d6d6d6 solid;
                            border-top: 2px solid #02A7E0;
                            display: none;
                            li{
                                width: 100%;
                                height: 45px;
                                margin: 0;
                                padding-left: 5px;
                                border-bottom: 1px #e8e8e8 solid;
                                img{
                                    vertical-align: middle;
                                }
                                a{
                                    width: 100%;
                                    text-align: center;
                                    color: #666;
                                }
                                &:hover{
                                    a{
                                        color: #02a7e0;
                                    }
                                }
                            }
                        }
                    }
                    li:nth-child(5){
                        a{
                            &:hover{
                                color: #fff;
                                background-color: #02a7e0;
                            }
                        }
                    }
                }
            }
            
        }
    }
</style>
