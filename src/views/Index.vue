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
                        Content of Tab Pane 2
                    </a-tab-pane>
                    <a-tab-pane key="3" tab="数位板">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="4" tab="数位屏">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="5" tab="移动电脑">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="6" tab="Bamboo">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="7" tab="原装配件">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="8" tab="在线教育">
                        Content of Tab Pane 3
                    </a-tab-pane>
                    <a-tab-pane key="9" tab="下载专区">
                        Content of Tab Pane 3
                    </a-tab-pane>
                </a-tabs>
            </div>
        </nav>
        <main>
            <ul>
                <li>
                    <a href="javascript:;">
                        <h5>官方验证开封品</h5>
                        <p>官方验证，完整配件与产品功能完好 新帝 低至6折</p>
                        <span>¥3499起 </span>
                        <img src="/img/index/202003031136532621.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <h5>官方验证开封品</h5>
                        <p>官方验证，完整配件与产品功能完好 新帝 低至6折</p>
                        <span>¥3499起 </span>
                        <img src="/img/index/202003031136532621.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <h5>官方验证开封品</h5>
                        <p>官方验证，完整配件与产品功能完好 新帝 低至6折</p>
                        <span>¥3499起 </span>
                        <img src="/img/index/202003031136532621.png" alt="">
                    </a>
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
            <div></div>
        </main>
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
            ]
            
        }
    }
    
}

/*
      
      
      */
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
    // opacity: 0.3;
    }
    .ant-carousel >>> .custom-slick-arrow:before {
        // display: none;
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
