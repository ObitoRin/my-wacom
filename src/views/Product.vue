<template>
    <section class="product">
        <Header></Header>
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
                       
                    </a-tab-pane>
                    <a-tab-pane key="2" tab="所有产品">
                    </a-tab-pane>
                    <a-tab-pane key="3" tab="数位板">
                    </a-tab-pane>
                    <a-tab-pane key="4" tab="数位屏">
                    </a-tab-pane>
                    <a-tab-pane key="5" tab="移动电脑">
                    </a-tab-pane>
                    <a-tab-pane key="6" tab="Bamboo">
                    </a-tab-pane>
                    <a-tab-pane key="7" tab="原装配件">
                    </a-tab-pane>
                    <a-tab-pane key="8" tab="在线教育">
                    </a-tab-pane>
                    <a-tab-pane key="9" tab="下载专区">
                    </a-tab-pane>
                </a-tabs>
            </div>
        </nav>
        <div class="product-box">
            <div class="pro-head">
                <h4>首页 > Wacom one 创意数位屏 > <strong>万与 创意数位屏 DTC133W0F</strong></h4>
            </div>
            <div class="pro-center">
                <div class="pc-left"></div>
                <div class="pc-right"></div>
            </div>
        </div>
    </section>
</template>
<script>
import Header from '@/components/Header.vue'
// import Header from '@/components/Header.vue'
export default {
    components: {
        Header
    }
}
</script>
<style lang="scss">
    .product{
        .product-box{
            width: 1100px;
            margin: 0 auto;
            .pro-head{
                h4{
                    color: #666666;
                    padding-left: 35px;
                    background: url(/img/product/icon.png) no-repeat 10px -189px;
                    font-weight: normal;
                }
            }
        }
    }
    
</style>