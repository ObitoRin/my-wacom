<template>
    <div>
        <Header></Header>
        <nav>
            <div class="logo">
                <h1>
                    <a href="javascript:;">wacom</a>
                </h1>
            </div>
        </nav>
        <Fixed></Fixed>
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
        width: 80%;
        margin: 0 auto;
        display: flex;
        h1{
            a{
                display: block;
                width: 100%;
                height: 100%;
                font-size: 0;
                background: url(../../public/img/index/logo.png);
            }
        }
    }
</style>
