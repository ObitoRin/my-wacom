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
            <a-tabs default-active-key="1">
                <a-tab-pane key="1" tab="首页">
                    <swiper ref="mySwiper" :options="swiperOptions">
                        <swiper-slide v-for="(item, index) of banners" :key="index"><img :src="item.url"></swiper-slide>
                        <div class="swiper-pagination" slot="pagination"></div>
                        <div class="swiper-button-prev" slot="button-prev"></div>
                        <div class="swiper-button-next" slot="button-next"></div>
                    </swiper>
                </a-tab-pane>
            </a-tabs>
        </nav>
        <Footer></Footer>
    </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import Fixed from '@/components/Fixed.vue'
import { Swiper, SwiperSlide } from 'vue-awesome-swiper'
import 'swiper/swiper-bundle.css'
export default {
    name: 'top',
    components:{
       Header,
       Footer,
       Fixed,
       Swiper,
       SwiperSlide
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
            swiperOptions: {
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true
                },
                loop: true,
                autoplay: {
                    delay: 1000,
                    stopOnLastSlide: false,
                    disableOnInteraction: true,
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            // Some Swiper option/callback...
            }
        }
    },
    computed: {
      swiper() {
        return this.$refs.mySwiper.$swiper
      }
    },
    mounted() {
        this.swiper.slideTo(this.banners.length, 7000, false)
      /*
      
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
      */
    }
}
</script>

<style lang="scss">
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
    }
    .ant-tabs-bar{
        padding-left: 95px;
        border: 0 !important;
    }
    .ant-tabs .ant-tabs-top-content{
        margin-top: 50px;
    }


</style>
