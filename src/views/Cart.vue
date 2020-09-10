<template>
    <section class="cart">
        <Header/>
        <div class="cart-head">
            <h1 class="logo">
                <router-link to="/">Wacom官方商城</router-link>
            </h1>
            <p>
                <img src="/img/cart/buystep01.png">
            </p>
        </div>
        <div class="cart-main">
            <div class="title">
                <h2>
                    <img src="/img/cart/icon01.png">
                </h2>
            </div>
            <table class="tab01_js" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr>
                        <th width="7%"><input class="selectitemAll" name="checkbox" type="checkbox"><label>全选</label></th>
                        <th width="57%">商品</th>
                        <th width="17%">价格</th>
                        <th width="7%">数量</th>
                        <th width="12%">操作</th>
                    </tr>
                    <tr v-for="(item, index) of shopCart" :key="index">
                        <td>
                            <input name="selectitem" type="checkbox">
                        </td>
                        <td class="td01_js">
                            <div class="details">
                                <router-link :to="'/product/' + item.uid">
                                    <img :src="item.images">
                                </router-link>
                                <p class="blue_js">
                                    <router-link :to="'/product/' + item.uid">
                                        {{item.details}}
                                    </router-link>
                                    <br>
                                    <span>商品编号：{{item.codename}}</span>
                                </p>
                            </div>
                        </td>
                        <td>{{(item.price * item.count).toFixed(2)}}</td>
                        <td>
                            <div id="choose-amount">
                                <div class="wrap-input">
                                    <a href="javascript:;" @click="decrease(index)" class="btn-reduce">减少数量</a>
                                    <a href="javascript:;" @click="add(index)" class="btn-add">增加数量</a>
                                    <input :value="item.count" class="text">
                                </div>
                            </div>
                        </td>
                        <td>
                            <a-popconfirm
                                title="确认删除该商品吗?"
                                ok-text="Yes"
                                cancel-text="No"
                                @confirm="confirm(index)"
                            >
                                <!-- <a href="javascript:;" class="blue_js" @click="deleteShop(index)">删除</a> -->
                                <a href="javascript:;" class="blue_js">删除</a>
                            </a-popconfirm>
                        </td>
                    </tr>
                </tbody>
            </table>
            
            <div class="box04">
                <div class="box04_l fl ">
                    <span class="p_sty03 ">共选中 <b id="Qty">0</b> 件商品　共计 <em class="red_js">￥ <b id="AllMoney">{{totalPrice}}</b> </em></span>
                    <span class="p_sty01"><input name="checkbox" class="selectitemAll" type="checkbox" value=""><label>全选</label></span>
                    <span class="p_sty02 red_js" style="display: none;">删除选中商品</span>
                </div>
                <div class="box04_r fr">
                    <input type="submit" class="btn03" value="" id="btnsubmit">
                </div>
            </div>
        </div>
        <Footer/>
    </section>
</template>
<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
export default {
    components:{
        Header,
        Footer
    },
    data(){
        return {
            shopCart: [],//添加到购物车的商品信息
            totalPrice: 0//总价
        }
    },
    methods:{
        calculate(){
            //把价格的符号去除再转为数字类型
            this.shopCart.forEach(ele=>{
                ele.price = parseInt(ele.price.slice(1, ele.price.length))
            })
        },
        getTotalPrice(){
            //总价
            let price = 0
            this.shopCart.forEach(ele=>{
                price += ele.price * ele.count
            })
            this.totalPrice = price.toFixed(2)
        },
        decrease(index){
            //获取当前购物车中对应索引的商品信息
            let shopIndex = this.shopCart[index]
            //商品数量
            if(shopIndex.count > 1){
                shopIndex.count -= 1
            }
            if(shopIndex.count == 1){
                shopIndex.count = 1
            }
            this.getTotalPrice()
        },
        add(index){
            let shopIndex = this.shopCart[index]
            shopIndex.count ++
            this.getTotalPrice()
        },
        confirm(e,index) {
            this.shopCart.splice(index, 1)
            this.getTotalPrice()
            this.$message.success('删除成功');
        }

    },
    mounted(){
        //获取临时存储的数据,防止刷新丢失数据
        this.shopCart = JSON.parse(sessionStorage.getItem('shopCart'))
        this.calculate()
        this.getTotalPrice()
    }
}
</script>
<style lang="scss">
    .cart {
        > .cart-head{
            min-width: 1000px;
            width: 100%;
            height: 100px;
            background: url(/img/cart/bg_body.png) left -33px;
            display: flex;
            align-items: center;
            > .logo{
                padding: 35px 0 0 100px;
                height: 100%;
                > a{
                    display: block;
                    width: 154px;
                    height: 37px;
                    background: url(/img/cart/logo_top.png);
                    text-indent: -300px;
                    overflow: hidden;
                    color: #fff;
                }
            }
            > p{
                margin-left: 150px;
            }
        }
        > .cart-main{
            width: 1000px;
            margin: 5px auto;
            border: 1px solid salmon;
            > .title{
                padding: 20px 0 15px;
                > h2{
                        margin-left: 15px;
                }
            }
            > .tab01_js{
                border: #dddddd solid 1px;
                background-color: #ffffff;
                > tbody{
                    > tr{
                        > th{
                            height: 36px;
                            line-height: 36px;
                            font-weight: normal;
                            background-color: #f7f7f7;
                            border-bottom: #dddddd solid 1px;
                            color: #666666;
                            text-align: center;
                        }
                        > td{
                            vertical-align: middle;
                            padding: 18px 0;
                            border-bottom: #dddddd solid 1px;
                            text-align: center;
                            >#choose-amount{
                                >.wrap-input{
                                    position: relative;
                                    width: 36px;
                                    padding: 0 18px;
                                    >a{
                                        position: absolute;
                                        top: 3px;
                                        width: 15px;
                                        height: 15px;
                                        overflow: hidden;
                                        line-height: 50px;
                                        background: url(/img/product/icon.png) no-repeat left top;
                                    }
                                    >a.btn-reduce{
                                        left: 0;
                                        background-position: -131px -31px;  
                                    }
                                    >a.btn-add{
                                        right: -30px;
                                        background-position: -147px -31px;
                                    }
                                    > .text{
                                        width: 30px;
                                        height: 16px;
                                        border: 1px solid #ccc;
                                        padding: 2px;
                                        text-align: center;
                                    }
                                }
                            }
                            > .blue_js{
                                color: #005ea7;
                                cursor: pointer;
                            }
                        }
                        > td.td01_js{
                            padding-left: 10px;
                            > div{
                                display: flex;
                                >a{
                                    color: #666666;
                                    text-decoration: none;
                                    > img{
                                        display: block;
                                        width: 50px;
                                        height: 50px;
                                        border: #dddddd solid 1px;
                                    }
                                }
                                
                                > p{
                                    width: 490px;
                                    text-align: left;
                                    line-height: 20px;
                                    padding-left: 10px;
                                }
                            }
                        }

                    }
                }
            }
        }
    }
</style>