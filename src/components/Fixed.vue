<template>
    <section class="fixed">
        <ul>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-yonghu"></use>
                    </svg>
                    <p>我的账户</p>
                </a>
                
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-iconset0308"></use>
                    </svg>
                    <span>购</span>
                    <span>物</span>
                    <span>车</span>
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-text_icon"></use>
                    </svg>
                    <p>我的订单</p>
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-shoucang"></use>
                    </svg>
                    <p>我的收藏</p>
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-yonghu"></use>
                    </svg>
                    <p>我的账户</p>
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-huidaodingbu"></use>
                    </svg>
                    <p>返回顶部</p>
                </a>
            </li>
        </ul>
    </section>    
</template>

<script>
export default {
    
}
</script>

<style lang="scss">
    .fixed{
        width: 40px;
        padding-top: 100px;
        background-color: #000;
        position: fixed;
        top: 0;
        left: 1450px;
            ul{
                li{
                    text-align: center;
                    margin-bottom: 25px;
                }
                li:nth-child(2){
                    a{
                        display: block;
                        padding: 12px 0;

                        &:hover{
                            background-color: #078DCC;
                        }
                        svg{
                            fill: white;
                            padding-top: 4px;
                            font-size: 12px;
                            transform: translate(0);
                        }
                        span{
                            display: block;
                            color: white;
                            margin-top: 10px;
                        }
                    }
                } 
                li:not(:nth-child(2)){
                    height: 40px;
                    line-height: 40px;
                    a{
                        display: block;
                        height: 100%;
                        position: relative;
                        svg{
                            fill: white;
                            padding-top: 4px;
                            font-size: 12px;
                            transform: translate(0);
                        }
                        &:hover{
                            background-color: #078DCC;
                        }
                        &:hover::before {
                            content: "";
                            left: -5px;
                            width: 10px;
                            height: 10px;
                            display: block;
                            position: absolute;
                            background: rgb(0, 0, 0);
                            transform: rotate(45deg);
                            top: 15px;
                            display: none;
                        }
                        p{
                            position: absolute;
                            left: -96px;
                            top: 0;
                            padding: 0 20px;
                            background: #000;
                            color: #fff;
                            height: 40px;
                            line-height: 40px;
                            cursor: text;
                            display: none;
                        }
                        &:hover{
                            p, &:hover::before{
                                display: block;
                            }
                        }
                    }
                }
            }
                
        }
</style>
