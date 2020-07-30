<template>
    <div>
        <Header></Header>
        <nav>
            <div class="logo">
                <h1>
                    <a href="javascript:;">wacom</a>
                    <img src="../../public/img/index/logo.png">
                </h1>
            </div>
        </nav>
    </div>
</template>

<script>
import Header from '@/components/Header.vue'
export default {
    name: 'top',
    components:{
       Header
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
                display: inline-block;
                width: 100%;
                height: 100%;
                text-indent: -999em;
            }
            img{
                cursor: pointer;
            }
        }
    }
</style>
