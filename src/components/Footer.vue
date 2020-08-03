<template>
    <footer>
        <section class="f-top">
            <div class="f-t-left">
                 <ul>
                     <li><span>购物指南</span></li>
                     <li><a href="javascript:;">配送方式</a></li>
                     <li><a href="javascript:;">联系客服</a></li>
                 </ul>
                 <ul>
                     <li><span>支付方式</span></li>
                     <li><a href="javascript:;">在线支付</a></li>
                     <li><a href="javascript:;">邮局汇款</a></li>
                     <li><a href="javascript:;">公司转账</a></li>
                 </ul>
                 <ul>
                     <li><span>售后服务</span></li>
                     <li><a href="javascript:;">售后政策</a></li>
                     <li><a href="javascript:;">关于发票</a></li>
                     <li><a href="javascript:;">维修中心</a></li>
                     <li><a href="javascript:;">取消订单</a></li>
                     <li><a href="javascript:;">视频专区</a></li>
                     <li><a href="javascript:;">下载专区</a></li>
                 </ul>
                 <ul>
                     <li><span>关于我们</span></li>
                     <li><a href="javascript:;">品牌介绍</a></li>
                 </ul>
            </div>
            <div class="f-t-right">
                <ul>
                    <li>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-weibo"></use>
                        </svg>
                        <span>官方微博</span>
                    </li>
                    <li><img src="/img/index/weibo.png" alt=""></li>
                    <li>
                        <p>扫描二维码</p>
                        <p>或<a href="http://weibo.com/wacom?refer_flag=1001030101_&is_hot=1">点击访问</a></p>
                    </li>
                </ul>

                <ul>
                    <li>
                        <svg class="icon icon-wx" aria-hidden="true">
                            <use xlink:href="#icon--"></use>
                        </svg>
                        <span>官方微信</span>
                    </li>
                    <li><img src="/img/index/ewx.png" alt=""></li>
                    <li>
                        <p>扫描二维码</p>
                        <p>帐号wacom_china</p>
                    </li>
                </ul>
            </div>
        </section>
        <section class="f-bottom">
            <div class="f-b-top">
                <div class="f-b-left">
                    <span>在线客服(周一至周日8:30-24:00)</span>
                </div>
                <div class="f-b-right">
                    <ul>
                        <li><span>分享到：</span></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                    </ul>
                </div>

            </div>
            <div class="share">
                <ul>
                    <li></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a><a href=""></a></li>
                    <li><a href=""></a></li>
                </ul>
            </div>
            <div class="f-b-bottom">
            </div>

        </section>
    </footer>
</template>
<script>
import '../../public/Iconfont/iconfont.js'
export default {
    
}
</script>

<style lang="scss">

    footer{
        border-top: 1px #fff solid;
        padding: 50px 0;
        .f-top{
            width: 80%;
            margin: 0 auto;
            border: 1px solid salmon;
            display: flex;
            justify-content: space-between;
            span,a{
                font-size: 14px;
                color: #666666;
            }
            .f-t-left{
                width: 60%;
                display: flex;
                
                ul{
                  
                    margin-right: 45px;
                    text-align: center;
                    li:first-child{
                        margin-bottom: 30px;
                    }
                    li{
                        span{
                            font-size: 18px;
                            font-weight: bold;
                        }
                        a{
                            line-height: 30px;
                            &:hover{
                                color: #02a7e0;
                            }
                        }
                    }
                }
            }
            .f-t-right{
                width: 40%;
                display: flex;
                justify-content: space-between;
                    ul{
                        width: 120px;
                        text-align: center;
                        border: 1px solid salmon;
                        li:first-child{
                            display: flex;
                            align-items: center;
                            span{
                                font-weight: bold;
                                padding-left: 6px;
                            }
                        }
                        li{
                            img{
                                width: 92px;
                                height: 92px;
                            }
                            p{
                                font-size: 12px;
                                color: #999999;
                                margin-top: 12px;
                                a{
                                    font-size: 12px;
                                    color: #666666;
                                }
                            }

                        }
                    }
            }
        }
        .f-bottom{
            width: 80%;
            height: 225px;
            border: 1px solid yellowgreen;
            margin: 0 auto;
            .f-b-top{
                display: flex;
                justify-content: space-between;
                .f-b-left{
                    span{
                        color: #02a7e0;
                        font-size: 18px;
                    }
                }
                .f-b-right{
                    ul{
                        display: flex;
                        align-items: center;
                        li{
                            span{
                                font-size: 12px;
                                padding-left: 22px;
                                background: url(/img/index/is.png) no-repeat;
                                cursor: pointer;
                            }
                        }
                        li{
                            a{
                                display: block;
                                width: 22px;
                                height: 22px;
                                background: url(/img/index/is.png) no-repeat;
                                &:hover{opacity: .8;}
                            }
                        }
                        li:nth-child(2){a{background-position: 0 -115px!important;}}
                        li:nth-child(3){a{background-position: 0 -75px!important;}}
                        li:nth-child(4){a{background-position: 0 -235px!important;}}
                        li:nth-child(5){a{background-position: 0 -195px!important;}}
                        li:nth-child(6){a{background-position: 0 -715px!important;}}
                    }
                }
            }
        }
    }
</style>