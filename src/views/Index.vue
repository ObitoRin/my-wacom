<template>
    <div>
        <Header></Header>
        <Fixed></Fixed>
        
        <nav>
            <div class="logo">
                <h1>
                    <a href="javascript:;"></a>
                </h1>
            </div>
            <div class="banner">
                <a-tabs default-active-key="1">
                    <a-tab-pane key="1" tab="首页">
                        <a-carousel arrows autoplay>
                            <div
                            slot="prevArrow"
                            slot-scope="props"
                            class="custom-slick-arrow"
                            style="left: 10px;zIndex: 1"
                            >
                                <a-icon type="left-circle" />
                            </div>
                            <div slot="nextArrow" slot-scope="props" class="custom-slick-arrow" style="right: 10px">
                                <a-icon type="right-circle" />
                            </div>
                            <div v-for="(item, index) of banners" :key="index">
                                <img :src="item.url">
                            </div>
                        </a-carousel>
                        <ul class="banner-nav">
                            <li v-for="(item, i) of 9" :key="i">
                                <a href="javascript:;">One by Wacom 学习板
                                    <div class="pro-box">
                                        <ul>
                                            <li>
                                                <img src="/img/index/202002282145002989.jpg" alt="">
                                                <h4>CTL-472/ K1-FX</h4>
                                                <a href="javascript:;">查看</a>
                                            </li>
                                            <li>
                                                <img src="/img/index/202002282145002989.jpg" alt="">
                                                <h4>CTL-472/ K1-FX</h4>
                                                <a href="javascript:;">查看</a>
                                            </li>
                                            <li>
                                                <img src="/img/index/202002282145002989.jpg" alt="">
                                                <h4>CTL-472/ K1-FX</h4>
                                                <a href="javascript:;">查看</a>
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </a-tab-pane>
                    <a-tab-pane key="2" tab="所有产品">
                        <!-- Content of Tab Pane 2 -->
                    </a-tab-pane>
                    <a-tab-pane key="3" tab="数位板">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="4" tab="数位屏">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="5" tab="移动电脑">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="6" tab="Bamboo">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="7" tab="原装配件">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="8" tab="在线教育">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                    <a-tab-pane key="9" tab="下载专区">
                        <!-- Content of Tab Pane 3 -->
                    </a-tab-pane>
                </a-tabs>
            </div>
        </nav>
        <main>
            <ul>
                <li v-for="(item, index) of bigPro" :key="index">
                    <router-link to="">
                        <h5>{{item.title}}</h5>
                        <p>{{item.details}}</p>
                        <span>{{item.price}} </span>
                        <img :src="item.images">
                    </router-link>
                </li>
                
                <li>
                    <div>
                        <a href="javascript:;">
                            <h6>Wacom Intuos Pro</h6>
                            <p>新一代影拓Pro 数位板 8192压感 </p>
                            <img src="/img/index/202003031137017759.png" alt="">
                        </a>
                    </div>
                    <div>
                        <a href="javascript:;">
                            <h6>Wacom Intuos Pro</h6>
                            <p>新一代影拓Pro 数位板 8192压感 </p>
                            <img src="/img/index/202003031137017759.png" alt="">
                        </a>
                    </div>
                </li>
            </ul>
            <div class="life">
                <div class="life-head">
                    <h3>Bamboo智能生活科技</h3>
                    <a href="javascript:;">查看更多</a>
                </div>
                <div class="banner">
                    <img src="/img/index/201805311631545473.jpg">
                </div>
                <div class="life-bottom">
                    <div class="b-left">
                        <h5>Bamboo Slate</h5>
                        <p>单开  智能笔记事数位本</p>
                        <span>¥999起</span>
                        <img src="/img/index/201708151449304349.png">
                    </div>
                    <div class="b-right">
                        <ul>
                            <li v-for="(item, index) of lifePro" :key="index">
                                <img :src="item.images">
                                <h5>{{item.title}}</h5>
                                <p>{{item.details}}</p>
                                <span>{{item.price}}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="sort">
                <div class="sort-head">
                    <h3>全线产品分类</h3>
                    <ul>
                        <li ref="tabOne" class="tab-one" @click="tabs"></li>
                        <li ref="tabTwo" class="tab-two" @click="tabs"></li>
                    </ul>
                </div>
                <div class="sortPro" v-if="sortShow">
                    <div v-for="(item, index) of sortProOne" :key="index">
                        <div class="sp-left" :style="{background:item.bgLeft}">
                            <h3>{{item.title}}</h3>
                            <p>⁡⁢⁡⁢⁡⁢⁡⁢{{item.details}}</p>
                        </div>
                        <div class="sp-right" :style="{background:item.bgRight}">
                            <a href="javascript:;">
                                <img :src="item.images">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sortPro" v-else>
                    <div v-for="(item, index) of sortProTwo" :key="index">
                        <div class="sp-left" :style="{background:item.bgLeft}">
                            <h3>{{item.title}}</h3>
                            <p>⁡⁢⁡⁢⁡⁢⁡⁢{{item.details}}</p>
                        </div>
                        <div class="sp-right" :style="{background:item.bgRight}">
                            <a href="javascript:;">
                                <img :src="item.images">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <div>
            <a-back-top />
            <strong style="color: rgba(64, 64, 64, 0.6)"></strong>
            
        </div>
        <Footer></Footer>
    </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Fixed from '@/components/Fixed.vue'

export default {
    name: 'top',
    components:{
       Header,
       Footer,
       Fixed
    },
    data(){
        return {
            banners: [
                {url: '/img/index/banner01.jpg'},
                {url: '/img/index/banner02.jpg'},
                {url: '/img/index/banner03.jpg'},
                {url: '/img/index/banner04.jpg'},
                {url: '/img/index/banner05.jpg'},
                {url: '/img/index/banner06.jpg'},
                {url: '/img/index/banner07.jpg'}
            ],
            bigPro: [],//banner商品
            lifePro: [],//生活科技
            sortProOne: [], //产品分类
            sortProTwo: [],
            sortShow: true
        }
    },
    methods:{
        tabs(e){
            if(e.target.className == 'tab-one'){
                this.$refs.tabOne.style.background = 'url(/img/index/prev.png) no-repeat center'
                this.$refs.tabTwo.style.background = 'url(/img/index/next-hover.png) no-repeat center'
                this.sortShow = true
            }else if(e.target.className == 'tab-two'){
                this.$refs.tabOne.style.background = 'url(/img/index/prev-hover.png) no-repeat center'
                this.$refs.tabTwo.style.background = 'url(/img/index/next.png) no-repeat center'
                this.sortShow = false

            }
        }
    },
    mounted(){
        this.axios.get('/product/bigPro')
        .then(response=>{
            this.bigPro = response.data
        })

         this.axios.get('/product/lifePro')
        .then(response=>{
            this.lifePro = response.data
        })
        this.axios.get('/product/sortProOne')
        .then(response=>{
            this.sortProOne = response.data
        })
        this.axios.get('/product/sortProTwo')
        .then(response=>{
            this.sortProTwo = response.data
        })
    }
    
}
</script>

<style lang="scss">
*{box-sizing: border-box;}
body{background: #f4f6f7;}
    main{
        width: 1200px;
        margin: 0 auto;
        margin-top: 30px;
        > ul{
            display: flex;
            justify-content: space-between;
           
            li{
              > a{
                  display: block;
                  color: white;
                  &:hover{
                      color: white;
                  }
                  h5{
                    font-size: 20px;
                    text-align: center;
                    font-weight: 500;
                    line-height: 40px;
                    color: white;
                  }
                  p{
                        padding: 0 9px;
                        font-size: 16px;
                        line-height: 20px;
                        margin-top: 20px;
                  }
                  span{
                    display: block;
                    text-align: center;
                    color: #078dcc;
                    font-size: 18px;
                    margin-top: 20px;
                  }
                 > img{
                        width: 100%;
                        margin-top: 13px;
                  }
              }
            }
            > li:not(:last-child){
                width: 260px;
                height: 355px;
                padding: 14px 20px;
                border: 1px #dbdbdb solid;
                background: url(/img/index/orange-bg.png) repeat;
                &:hover{
                    transform: translateY(-2px);
                    box-shadow: 0 0 20px #969696;
                }
            }
            > li:last-child{
                &:hover{
                    background-color: #f4f6f7;
                }
                >div{
                    width: 281px;
                    height: 173px;
                    background: url(/img/index/gray-bg.png) repeat;
                    margin-bottom: 10px;
                    &:hover{
                        transform: translateY(-2px);
                        box-shadow: 0 0 20px #969696;
                    }
                  > a{
                    display: block;
                    color: white;
                    &:hover{
                        color: white;
                    }
                  }
                  h6{
                    font-size: 18px;
                    font-weight: 500;
                    text-align: center;
                    color: #fff;
                    line-height: 50px;
                  }
                  p{
                        text-align: center;
                  }
                  img{
                        display: block;
                        height: 80px;
                        width: auto;
                        margin: 0 auto;
                  }
              } 
            }
        }
        > .life{
            .life-head{
                display: flex;
                justify-content: space-between;
                align-items: center;
                > h3{
                    color: #666666;
                    font-size: 28px;
                }
                > a{
                    color: #666666;
                    font-size: 14px;
                    margin-right: 40px;
                    padding-right: 25px;
                    background: url(/img/index/more.png) no-repeat right center;
                    &:hover{
                        color: #02a7e0;
                    }
                }
            }
            .life-banner{
                margin-top: 20px;
            }
            .life-bottom{
                margin-top: 20px;
                display: flex;
                > .b-left{
                    width: 250px;
                    margin-right: 20px;
                    background: #fff;
                    border: 1px #dbdbdb solid;
                    padding: 40px 22px 0 22px;
                    height: 558px;
                    > h5{
                        text-align: center;
                        font-size: 20px;
                        font-weight: 500;
                        margin-top: 38px;
                    }
                    > p{
                        margin-top: 39px;
                        line-height: 20px;
                        color: #b0b0b0;
                        text-align: center;
                    }
                    > span{
                        display: block;
                        color: #078dcc;
                        text-align: center;
                        font-size: 18px;
                        margin-top: 35px;
                    }
                    > img{
                        margin-top: 35px;
                        width: 100%;
                        height: auto;
                    }
                }
                > .b-right{
                    width: 990px;
                    > ul {
                        display: flex;
                        flex-wrap: wrap;
                        justify-content: space-around;
                        > li{
                            width: 233px;
                            height: 266px;
                            background: #fff;
                            border: 1px #dbdbdb solid;
                            padding: 11px 10px;
                            margin-bottom: 26px;
                            position: relative;
                            &:hover{
                                top: -2px;
                                box-shadow: 0 0 20px #969696;
                            }
                            > img{
                                width: 100%;
                                height: auto;
                            }
                            > h5{
                                font-size: 20px;
                                text-align: center;
                                font-weight: 500;
                                margin: 15px 0;
                            }
                            > p{
                                margin: 0 15px;
                                color: #b0b0b0;
                                text-align: center;
                            }
                            > span{
                                display: block;
                                text-align: center;
                                color: #078dcc;
                                margin-top: 8px;
                                font-size: 18px;
                            }
                        }
                    }
                }
            }
        }
        > .sort{
            .sort-head{
                display: flex;
                justify-content: space-between;
                align-items: center;
                > h3{
                    color: #666666;
                    font-size: 28px;
                } 
                > ul{
                display: flex;
                    > li{
                        display: block;
                        width: 46px;
                        height: 24px;
                        border: 1px #ccc solid;
                        cursor: pointer;
                    }
                    > li:first-child{
                        background: url(/img/index/prev.png) no-repeat center;                        
                    }
                    > li:last-child{
                        background: url(/img/index/next-hover.png) no-repeat center;
                    }
                }
            }
            .sortPro{
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                > div{
                    height: 245px;
                    display: flex;
                    margin-bottom: 10px;
                    .sp-left{
                        padding: 60px 40px;
                        background: #67b687;
                        > h3{
                            text-align: center;
                            width: 120px;
                            color: #fff;
                            font-size: 20px;
                            font-weight: 500;
                            border-top: 3px solid #fff;
                            border-bottom: 3px solid #fff;
                            margin-bottom: 0;
                        }
                        > p{
                            line-height: 20px;
                            color: #fff;
                        }
                    }
                    .sp-right{
                        width: 390px;
                        height: 245px;
                        text-align: center;
                        > a {
                            > img{
                                    width: auto;
                                    height: 170px;
                                    margin-top: 44px;
                            }
                        }
                    }
                }
            }
        }
    }






    nav{
        width: 1200px;
        margin: 0 auto;
        display: flex;
        margin-top: 30px;
        position: relative;

        h1{
            position: absolute;
            left: 0;
            top: 0;
            a{
                display: inline-block;
                width: 85px;
                height: 85px;
                background: url(../../public/img/index/logo.png);
            }
        }
        .banner{
            position: relative;
            .banner-nav{
                position: absolute;
                top: 93px;
                left: 0;
                background-color: rgba(0,0,0,.4);
                padding-top: 20px;
                >li{
                    width: 220px;
                    height: 50px;
                    color: #fff;
                    padding: 13px 25px;
                    background: url(/img/index/li-left.png) no-repeat right 10px center;
                    cursor: pointer;
                    &:hover{
                        background: url(/img/index/lihover.png) no-repeat right 10px center #fff;
                        a{
                            color: #24272D;
                            .pro-box{
                                display: block;
                            }
                        }
                    }
                    a{
                        display: block;
                        color: #fff;
                        .pro-box{
                            width: 800px;
                            height: 470px;
                            border: 1px #B5B1B1 solid;
                            background-color: #fff;
                            position: absolute;
                            top: 0;
                            left: 220px;
                            display: none;
                            ul{
                                display: flex;
                                flex-wrap: wrap;
                                li{
                                    width: 50%;
                                    display: flex;
                                    justify-content: space-around;
                                    align-items: center;
                                    margin-top: 10px;
                                    img{
                                        width: 50px;
                                        height: 50px;
                                    }
                                    a{
                                        display: block;
                                        width: 60px;
                                        height: 40px;
                                        line-height: 40px;
                                        text-align: center;
                                        border: 1px solid #00a1e1;
                                        color: #00a1e1;
                                        font-size: 16px;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
    .ant-tabs-bar{
        padding-left: 95px;
        border: 0 !important;
    }
    .ant-tabs .ant-tabs-top-content{
        margin-top: 50px;
    }
    /* For demo */
    .ant-carousel >>> .slick-slide {
    text-align: center;
    height: 160px;
    line-height: 160px;
    background: #364d79;
    overflow: hidden;
    }

    .ant-carousel >>> .custom-slick-arrow {
    width: 25px;
    height: 25px;
    font-size: 25px;
    color: #fff;
    background-color: rgba(31, 45, 61, 0.11);
    
    }
    .ant-carousel >>> .custom-slick-arrow:before {
        
    }
    .ant-carousel >>> .custom-slick-arrow:hover {
        opacity: 0.5;
    }

    .ant-carousel >>> .slick-slide h3 {
    color: #fff;
    }
    svg{
        width: 40px;
        height: 80px;
        fill: #DDDEDE;
        transform: translate(-10px,-35px);
    }
    svg:hover{
        background-color: rgba(0,0,0,.4);
    }
    .ant-carousel .slick-dots-bottom {
        bottom: 40px !important;
        right: -465px;
    }
    .ant-carousel .slick-dots li button {
        width: 16px !important;
        height: 16px !important;
        display: inline-block !important;
        border-radius: 100% !important;
        background: #fff !important;
        margin: 0 5px !important;
        border: 2px #A09E9E solid !important;
    }
</style>
