<template>
    <div class="order">
        <div>
            <p>我的订单</p>
            <p></p>
            <p>查看全部<span><img src="../../assets/img/rightjt.png" alt=""></span></p>
        </div>
        <div class="goshop">
            <div>
                <img src="../../assets/img/pay.png" alt="">
                <p>待支付</p>
            </div>
            <div class="sh">
                <img src="../../assets/img/sh.png" alt="" class="sh">
                <p>待收货</p>
            </div>
            <div>
                <img src="../../assets/img/commons.png" alt="">
                <p>评价有礼</p>
            </div>
            <div>
                <img src="../../assets/img/th.png" alt="">
                <p>退换/售后</p>
            </div>
            <div>
                <img src="../../assets/img/forms.png" alt="">
                <p>常购清单</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'order'
}
</script>

<style lang="less" scoped>
.order {
    width: 35.1rem;
    height: 12.9rem;
    background-color: #fff;
    border-radius: .5rem;
    margin-left: 1.2rem;
    margin-top: 1rem;
    position: relative;
}

.order>div:nth-of-type(1) {
    width: 33rem;
    height: 1.7rem;
    // background-color: aqua;
    display: flex;
    margin-top: 1.2rem;
    position: absolute;
    left: 1.1rem;
}

.order>div:nth-of-type(1) p {
    height: 1.7rem;
    line-height: 1.7rem;
}

.order>div:nth-of-type(1) p:nth-of-type(1) {
    width: 6rem;
    font-size: 1.5rem;
    color: #222;
    font-weight: bold;
}

.order>div:nth-of-type(1) p:nth-of-type(2) {
    width: 20.75rem;
}

.order>div:nth-of-type(1) p:nth-of-type(3) {
    width: 6.25rem;
    font-size: 1.2rem;
    font-weight: bold;
    color: #666;
    position: relative;
}

.order>div:nth-of-type(1) img {
    width: 1.2rem;
    height: 1.2rem;
    position: absolute;
    background-color: #ffcc00;
    border-radius: .6rem;
    top: 0.25rem;
    right: -.25rem;
}

.goshop {
    width: 33rem;
    height: 8.8rem;
    // background-color: rgb(100, 255, 154);
    position: absolute;
    top: 3rem;
    left: 1.1rem;
    display: flex;
}

.goshop div {
    width: 6.6rem;
    height: 8.8rem;
}

.goshop img {
    width: 2.5rem;
    margin-left: 2.05rem;
    margin-top: 2rem;
}

.sh img {
    margin-top: 2.2rem !important;
}

.sh p {
    margin-top: .1rem;
}

.goshop p {
    text-align: center;
    font-size: 1.2rem;
    margin-top: .5rem;
    color: #222;
}
</style>