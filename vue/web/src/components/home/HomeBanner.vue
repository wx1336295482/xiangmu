<template>
    <div class="HomeBanner">
        <div class="kb"></div>
        <div class="content">
            <div>
                <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
                    <van-swipe-item v-for="item in this.$store.state.bannerdatas" :key="item.id">
                        <img :src=item.img alt="" class="bnimg">
                    </van-swipe-item>
                </van-swipe>
            </div>
            <div class="bannerrigth">
                <div>
                    <div>
                        <p>冰洗钜惠</p>
                        <img src="../../assets/img/banner2.jpg" alt="">
                        <span>每千减百</span>
                    </div>
                    <div>
                        <p>母婴热卖</p>
                        <img src="../../assets/img/banner3.png" alt="">
                        <span>低至77折</span>
                    </div>
                </div>
                <div></div>
                <div>
                    <div>
                        <p>电视家影</p>
                        <img src="../../assets/img/banner4.png" alt="">
                        <span class="sp">享12期免息</span>
                    </div>
                    <div>
                        <p>爆款手机</p>
                        <img src="../../assets/img/banner5.png" alt="">
                        <span>12期免息</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="kbs"></div>
    </div>
</template>

<script>
//引入vant样式
import 'vant/lib/index.css'
export default {
    name: 'HomeBanner',
    mounted() {
        this.$store.dispatch('BannerImg')
        this.$store.commit('setbannerdatas')
    },
}
</script>

<style lang="less" scoped>
.HomeBanner {
    width: 37.5rem;
    height: 25.6rem;
    background-color: #f7f7f7;
}

.content {
    width: 37.5rem;
    height: 21rem;
    display: flex;
}

.content>div {
    width: 17rem;
    height: 22.2rem;
    margin-left: 1.2rem;
}

.content>div:nth-of-type(2) {
    margin-left: 1.1rem;
}

.kb {
    width: 37.5rem !important;
    height: 1.2rem !important;
    background-color: #f7f7f7 !important;
    /* margin-left: 0rem !important; */
}

.kbs {
    width: 37.5rem !important;
    height: 2.2rem !important;
    background-color: #f7f7f7 !important;
    /* margin-left: 0rem !important; */
}

.bannerrigth>div {
    width: 17rem;
    height: 10.5rem;
    background-image: url("../../assets/img/banner.png");
    background-size: 17rem 10.5rem;
    display: flex;
    justify-content: center;
}

.bannerrigth div {
    position: relative;
}

.bannerrigth>div:nth-of-type(2) {
    width: 17rem;
    height: 1.2rem;
    background-color: #f7f7f7;
    background-image: none
}

.bannerrigth p {
    width: 7.8rem;
    height: 2.4rem;
    font-size: 1.3rem;
    color: #ffffff;
    text-align: center;
    font-weight: 700;
    margin-top: .2rem;
}

.bannerrigth img {
    width: 6rem;
    height: 6rem;
    margin-left: 0.9rem;
    margin-top: 0.6rem;
}

.bannerrigth span {
    height: 1.4rem;
    color: #ffffff;
    font-size: 1.2rem;
    border-radius: .7rem;
    text-align: center;
    background-color: #ff4a19;
    padding: 0rem .5rem;
    position: absolute;
    bottom: 1rem;
    left: 1rem;
}

.sp {
    left: 0.2rem !important;
}

/deep/.my-swipe,
/deep/ .van-swipe-item {
    width: 17rem;
    height: 22.2rem;
    color: #fff;
    font-size: 20px;
    line-height: 150px;
    text-align: center;
}

.van-swipe__indicator--active {
    /* width: 10rem !important; */
    color: #ff4a19 !important;
}

.bnimg {
    width: 17rem;
    height: 26.8rem;
    margin-top: -2.3rem;
}

.my-swipe {
    overflow: hidden;
    border-radius: 1.2rem;
}

.van-swipe-item {
    float: left;
    overflow: hidden;
}
</style>