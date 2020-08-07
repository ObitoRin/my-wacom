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
                    Content of Tab Pane 1
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
        </nav>
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
        margin-top: 100px;
    }
</style>
