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
                        <li class="share-box">
                            <span @mouseenter.stop="shareHandle" @mouseleave="leaveHandle">分享到</span>
                            <!-- <div @mouseenter.stop="shareHandle" @mouseleave="leaveHandle">
                                <div class="share" v-show="share">
                                     <ul>
                                        <li><p>分享到</p></li>
                                        <li><a href="javascript:;">一键分享</a><a href="javascript:;">QQ空间</a></li>
                                        <li><a href="javascript:;">新浪微博</a><a href="javascript:;">百度云收藏</a></li>
                                        <li><a href="javascript:;">人人网</a><a href="javascript:;">腾讯微博</a></li>
                                        <li><a href="javascript:;">百度相册</a><a href="javascript:;">开心网</a></li>
                                        <li><a href="javascript:;">腾讯朋友</a><a href="javascript:;">百度贴吧</a></li>
                                        <li><a href="javascript:;">豆瓣网</a><a href="javascript:;">搜狐微博</a></li>
                                        <li><a href="javascript:;">百度新首页</a><a href="javascript:;">QQ好友</a></li>
                                        <li><a href="javascript:;">和讯微博</a><a href="javascript:;">更多...</a></li>
                                        <li><a href="javascript:;">百度分享</a></li>
                                    </ul> 
                                </div>
                            </div> -->
                        </li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                        <li><a href="javascript:;"></a></li>
                    </ul>
                </div>
                <div class="share" v-show="share">
                    <ul>
                        <li><span>分享到</span></li>
                        <li><a href="javascript:;">一键分享</a><a href="javascript:;">QQ空间</a></li>
                        <li><a href="javascript:;">新浪微博</a><a href="javascript:;">百度云收藏</a></li>
                        <li><a href="javascript:;">人人网</a><a href="javascript:;">腾讯微博</a></li>
                        <li><a href="javascript:;">百度相册</a><a href="javascript:;">开心网</a></li>
                        <li><a href="javascript:;">腾讯朋友</a><a href="javascript:;">百度贴吧</a></li>
                        <li><a href="javascript:;">豆瓣网</a><a href="javascript:;">搜狐微博</a></li>
                        <li><a href="javascript:;">百度新首页</a><a href="javascript:;">QQ好友</a></li>
                        <li><a href="javascript:;">和讯微博</a><a href="javascript:;">更多...</a></li>
                        <li><a href="javascript:;">百度分享</a></li>
                    </ul>
                </div>
            </div>
            <div class="f-b-bottom">
                <div>
                    <img src="/img/index/logo2.png">
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

        </section>
    </footer>
</template>
<script>
import '../../public/Iconfont/iconfont.js'
export default {
    data(){
        return {
            share: false
        }
    },
    methods:{
        shareHandle(){
            this.share = true
        },
        leaveHandle(){
            this.share = false
        }
    },
    mounted(){
        this.shareHandle()
    }
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
                width: 20%;
                display: flex;
                justify-content: space-between;
                    ul{
                        width: 120px;
                        text-align: center;
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
                    ul:nth-child(2){
                        padding-top: 5px;
                    }
            }
        }
        
        .f-bottom{
            width: 80%;
            border: 1px solid yellowgreen;
            margin: 0 auto;
            padding: 45px 0;
            .f-b-top{
                position: relative;
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
                .share{
                    border: 1px solid skyblue;
                    position: absolute;
                    top: -265px;
                    right: 0;
                    z-index: 1;
                    ul{
                        background-color: #fff;
                        a{
                            color: #555555;
                            font-size: 12px;
                            border-radius: 4px;
                        }
                        li:first-child{
                            width: 210px;
                            border: 1px solid salmon;
                            padding: 5px 0 5px 5px;
                            background-color: #F6F6F6;
                            span{
                                color: #666666;
                                font-size: 16px;
                            }
                        }
                        li:not(:nth-child(1)){
                            width: 210px;
                            a{
                                display: inline-block;
                                width: 35%;
                                border: 1px solid sandybrown;
                                height: 17px;
                                padding-left: 25px;
                                margin-bottom: 5px;
                                background: url(/img/index/is.png) no-repeat;
                            }
                            a:nth-child(2){
                                margin-left: 9px;
                            }
                        }
                    
                        li:nth-child(2){
                            a:nth-child(1){
                                background-position: 0 -2075px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -80px!important;
                            }
                        }
                        li:nth-child(3){
                            a:nth-child(1){
                                background-position: 0 -120px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -2554px!important;
                            }
                        }
                        li:nth-child(4){
                            a:nth-child(1){
                                background-position: 0 -200px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -240px!important;
                            }
                        }
                        li:nth-child(5){
                            a:nth-child(1){
                                background-position: 0 -2195px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -280px!important;
                            }
                        }
                        li:nth-child(6){
                            a:nth-child(1){
                                background-position: 0 -320px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -600px!important;
                            }
                        }
                        li:nth-child(7){
                            a:nth-child(1){
                                background-position: 0 -400px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -440px!important;
                            }
                        }
                        li:nth-child(8){
                            a:nth-child(1){
                                background-position: 0 -160px!important;
                            }
                            a:nth-child(2){
                                background-position: 0 -2235px!important;
                            }
                        }
                        li:nth-child(9){
                            a:nth-child(1){
                                background-position: 0 -1835px!important;
                            }
                        }
                        li:nth-child(10){
                            text-align: right;
                            a{
                                padding-left: 0;
                            }
                        }
                    }
                }
            }
            .f-b-bottom{
                margin-top: 55px;
                display: flex;
                align-items: center;
                .text{
                    margin-left: 10px;
                    ul{
                        display: flex;
                        li{

                            a{
                                color: #02a7e0;
                            }
                        }
                    }
                    p{
                        font-size: 14px;
                        color: #666666;
                        margin: 10px 0;
                    }
                    p:nth-child(1){
                        
                    }
                }
            }
        }
    }
</style>