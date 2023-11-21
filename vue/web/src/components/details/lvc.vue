<template>
    <div class="glkfrB">
        <div v-for="item in this.$store.state.detailsdatas" :key="item.id" v-if="item.id == 3" class="gls">
            <div class="fhs" @click="goBack">
                <img src="../../assets/img/fh.png" alt="" class="fh">
            </div>
            <van-swipe class="my-swipe" :autoplay="30000" indicator-color="white">
                <van-swipe-item>
                    <img :src=item.imgF alt="">
                    <span v-show="false" ref="myimg">{{ item.imgF }}</span>
                    <span v-show="false" ref="myprice">{{ item.price }}</span>
                </van-swipe-item>
                <van-swipe-item>
                    <img :src=item.imgS alt="">
                </van-swipe-item>
                <van-swipe-item>
                    <img :src=item.imgT alt="">
                </van-swipe-item>
                <van-swipe-item>
                    <img :src=item.imgFour alt="">
                </van-swipe-item>
                <van-swipe-item v-if="item.imgFive">
                    <img :src=item.imgFive alt="">
                </van-swipe-item>
                <van-swipe-item v-if="item.imgSix">
                    <img :src=item.imgSix alt="">
                </van-swipe-item>
                <van-swipe-item v-if="item.imgServen">
                    <img :src=item.imgServen alt="">
                </van-swipe-item>
                <van-swipe-item v-if="item.imgEight">
                    <img :src=item.imgEight alt="">
                </van-swipe-item>
                <van-swipe-item v-if="item.imgNine">
                    <img :src=item.imgNine alt="">
                </van-swipe-item>
            </van-swipe>
            <div class="contents">
                <div>
                    <span>
                        <p v-show="item.titlesmall">{{ item.titlesmall }}</p>&nbsp;
                        <span ref="mytitle">{{ item.title }}</span>
                    </span>
                    <img src="../../assets/img/gz.png" alt="">
                </div>
                <span ref="mycontent">{{ item.content }}</span>
            </div>
            <div class="vip">
                <img src="../../assets/img/vip.png" alt="">
                <p>开通会员预计可省<span>{{ item.sprice }}</span></p>
                <p>查看详情<img src="../../assets/img/vipr.png" alt=""></p>
            </div>
            <div class="juans">
                <div>
                    <img src="../../assets/img/yhtb.png" alt="">
                    <span>&nbsp;可参加以下优惠活动</span>
                    <span>查看更多<img src="../../assets/img/vipr.png" alt=""></span>
                </div>
                <div>
                    <div>
                        <p>促销</p>
                    </div>
                    <div>
                        <ul>
                            <li><span>包邮</span>&nbsp;满1件包邮</li>
                            <li><span>返云钻</span>&nbsp;预计返149云钻</li>
                            <li><span>实名领卷</span>&nbsp;领15元无门槛支付券</li>
                        </ul>
                    </div>
                </div>
                <div>
                    <div>
                        <p>活动</p>
                    </div>
                    <div>
                        <ul>
                            <li><img src="../../assets/img/hdfl.png" alt="">&nbsp;<span>新人专享5元券</span></li>
                            <li><img src="../../assets/img/gjhs.png" alt="">&nbsp;<span>旧机免费估价，闲置回收变现<img
                                        src="../../assets/img/vipr.png" alt="" class="imgv"></span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="new">
                <div>
                    <div>
                        <img src="../../assets/img/yjhx.png" alt="">
                        <img src="../../assets/img/bt.png" alt="">
                        <span>预计换新价<span class="jg">{{ item.btprice }}</span></span>
                        <p>立即换新</p>
                    </div>
                    <div>
                        <p class="ppp">付差价购新，免费拆卸搬运</p>
                    </div>
                </div>
            </div>
            <div class="shopcar">
                <van-goods-action>
                    <van-goods-action-icon icon="chat-o" text="客服" />
                    <van-goods-action-icon icon="cart-o" text="购物车" @click="onClickButton" />
                    <van-goods-action-icon icon="shop-o" text="店铺" />
                    <van-goods-action-button type="warning" text="加入购物车" @click="onClickIcon" v-if="logins" />
                    <van-goods-action-button type="warning" text="加入购物车" @click="onlogin" v-if="!logins" />
                    <van-goods-action-button type="danger" text="立即购买" />
                </van-goods-action>
            </div>
        </div>
    </div>
</template>

<script>
import { Dialog } from 'vant';
import shopdetails from '../../assets/css/shopdetails.css';
export default {
    name: 'glkfrB',
    data() {
        return {
            totals: 1,
            logins: ''
        }
    },
    mounted() {
        // if (!this.$store.state.detailsDataLoaded) {
        this.$store.commit('setdetailsdatas');
        this.$store.dispatch('detailses');
        //     this.$store.commit('setDetailsDataLoaded', true); // 设置标志变量，表示数据已加载
        // }
        this.logines()
    },
    methods: {
        goBack() {
            this.$router.go(-1);
        },
        onClickIcon() {
            Dialog.alert({
                title: '添加成功',
            })
                .then(() => {
                    let param = {
                        imgs: this.$refs.myimg[0].innerHTML,
                        titles: this.$refs.mytitle[0].innerHTML,
                        contents: this.$refs.mycontent[0].innerHTML,
                        prices: this.$refs.myprice[0].innerHTML,
                        total: this.totals
                    }
                    this.$store.dispatch('Shopcars', param)
                })
                .catch((error) => {
                    console.log(error);
                });
        },
        onClickButton() {
            this.$router.push('/shopping/logined')
        },
        logines() {
            this.logins = window.sessionStorage.getItem('logindatas')
        },
        onlogin() {
            this.$router.push('/login')
        }
    }
}
</script>

<style lang="less" scoped>
.my-swipe,
.van-swipe-item {
    width: 37.5rem;
    height: 37.5rem;
    color: #fff;
    font-size: 20px;
    line-height: 150px;
    text-align: center;
}

.glkfrB>div:nth-of-type(1),
/deep/.van-swipe-item>img {
    width: 37.5rem;
    height: 37.5rem;
}

.shopcar,
/deep/.van-goods-action {
    width: 37.5rem;
    height: 5rem;
}

/deep/.van-goods-action-icon {
    height: 5rem;
    width: 5rem;
    font-size: 1.2rem;
}

/deep/.van-icon-chat-o:before,
/deep/.van-icon-cart-o:before,
/deep/.van-icon-shop-o:before {
    font-size: 2rem;
    margin-left: -.45rem;
}

/deep/.van-button {
    width: 8.8rem;
    height: 3.3rem;
    font-size: 1.4rem;
}
</style>