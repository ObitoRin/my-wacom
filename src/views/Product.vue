<template>
    <section class="product">
        <Header></Header>
        <Fixed/>
        <nav>
            <div class="logo">
                <h1>
                    <a href="javascript:;"></a>
                </h1>
            </div>
            <div class="banner">
                <a-tabs default-active-key="1">
                    <a-tab-pane key="1" tab="首页">
                       
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
        <div class="product-box"  v-for="(item, index) of proList" :key="index">
            <div class="pro-head">
                <h4>首页 > Wacom one 创意数位屏 > <strong>{{item.title}}&nbsp;{{item.codename}}</strong></h4>
            </div>
            <div class="pro-center">
                <div class="pc-left">
                    <img :src="item.images"/>
                </div>
                <div class="pc-right">
                    <div class="info">
                        <h1>{{item.title}} <span>{{item.codename}}</span></h1>
                        <p>{{item.details}}</p>
                        <p>价格：<strong>{{item.price}}</strong></p>
                        <p>商品编号：<strong>{{item.codename}}</strong></p>
                    </div>
                    <div class="delivery">
                        <span>配送至：</span>
                        <select>
                            <option :value="item.addresses" v-for="(item,i) of address" :key="i">{{item.addresses}}</option>
                        </select>
                        <p>配送说明：</p>
                        <p>库存：{{item.stock}}</p>
                    </div>
                    <div class="count">
                        <span>购买数量：</span>
                        <button @click="decrease">-</button>
                        <input type="text" :value="count">
                        <button @click="add">+</button>
                    </div>
                    <div class="contact">
                        <span>联系我们：</span>
                        <a href="javascript:;"></a>
                    </div>
                    <div class="buy">
                        <a href="javascript:;">立即购买</a>
                        <router-link to="/cart" @click="cart">加入购物车</router-link>
                        <a href="javascript:;">加入收藏</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
import Header from '@/components/Header.vue'
import Fixed from '@/components/Fixed.vue'
export default {
    components: {
        Header,
        Fixed
    },
    data(){
        return{
            proList: [],//对应id的产品信息
            address: [],//地址
            count: 1//购买数量
        }
    },
    methods: {
        decrease(){
            if(this.count > 1){
                this.count -= 1
            }
            if(this.count == 1){
                this.count = 1
            }
        },

        add(){
            this.count ++
        },
        cart(){

        }
    },
    mounted() {
        //路由守卫 判断有无登录,登录再跳购物车,未登录就提示再跳注册
        //根据商品数量循环创建对应的购物车商品列表
        
        //根据商品对应的编号获取对应的商品数据
        this.axios.get(
            '/product/productPage',
            {
                params:{
                    uid: this.$route.params.num
                }
            }
        ).then(res=>{
            this.proList = res.data
        })

        this.axios.get('/product/addresses')
        .then(res=>{
            this.address = res.data
        })
    },
}
</script>
<style lang="scss">
    body{
        background: #f4f6f7 !important;
    }
    .product{
        .product-box{
            width: 1100px;
            margin: 0 auto;
            margin-top: 30px;
            .pro-head{
                > h4{
                    color: #666666;
                    padding-left: 35px;
                    background: url(/img/product/icon.png) no-repeat 10px -189px;
                    font-weight: normal;
                }
            }
            .pro-center{
                border: 1px solid #e8e8e8;
                background: #fff;
                display: flex;
                > .pc-left{
                    width: 460px;
                    padding: 30px 30px 0;
                    display: flex;
                    align-items: center;
                    > img{
                        width: 100%;
                        height: auto;
                    }
                }
                > .pc-right{
                    width: 600px;
                    min-height: 460px;
                    padding: 60px 80px 0 40px;
                    > div ~ div{
                        padding: 10px 0;
                        border-top: 1px dashed #dddddd;
                    }
                    > .info{
                        > h1{
                            font-size: 18px;
                            font-weight: bold;
                            color: #666;
                            margin-bottom: 0;
                        }
                        >p:nth-of-type(2){
                            > strong{
                                font-size: 18px;
                                font-weight: bold;
                                color: #F00;
                            }
                        }
                    }
                    .delivery{
                        > select{
                            width: 125px;
                            margin-left: 10px;
                        }
                        > p:nth-of-type(1){
                            margin-top: 14px;
                        }
                        > p:last-child{
                            margin-bottom: 0;
                        }
                    }
                    .count{
                        > button{
                            width: 22px;
                            height: 22px;
                            text-align: center;
                            line-height: 19px;
                            margin: 0 5px;
                            padding: 0;
                        }
                        > input{
                            width: 30px;
                            height: 22px;
                            border: 1px solid #ccc;
                            padding: 2px;
                            text-align: center;
                        }
                    }
                    .contact{
                        display: flex;
                        align-items: center;
                        > a{
                            display: inline-block;
                            width: 89px;
                            height: 24px;
                            background: url(/img/product/bg_pro.jpg) no-repeat -35px -54px;
                            text-indent: -300px;
                            overflow: hidden;
                        }
                    }
                    .buy{
                        > a{
                            display: inline-block;
                            width: 130px;
                            height: 35px;
                            font-size: 16px;
                            font-family: "微软雅黑","黑体";
                            line-height: 35px;
                            color: #FFF;
                            text-align: center;
                            margin-top: 10px;
                        }
                        > a:first-child,> a:last-child{
                            background: #96be0f;
                        }
                        > a:nth-child(2){
                            background: #02a7e0 url(/img/product/icon.png) no-repeat 8px -133px;
                            text-indent: 39px;
                            margin: 0 15px;
                        }
                        
                    }
                }
            }

        }
    }
    
</style>