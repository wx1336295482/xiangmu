<template>
    <div class="HomeShopping">
        <div class="like">
            <img src="../../assets/img/shopping1.webp" alt="">
        </div>
        <div class="contentshop">
            <van-list v-model="loading" :finished="finished" finished-text="没有更多了" @load="onLoad">
                <div v-for='(item, index) in this.$store.state.shoppinglistdatas' :key="index.id" class="ListALl ">
                    <router-link :to="item.href">
                        <div class="itemShop">
                            <div>
                                <img :src=item.img alt="" class="shoppImg">
                            </div>
                            <p>{{ item.msg }}</p>
                            <div class="detail">
                                <img :src=item.detailimg alt="" class="detailImg">
                                <span ref="mySpan" v-show="item.detail">{{ item.detail }}</span>
                                <span ref="mySpans" v-show="item.details">{{ item.details }}</span>
                            </div>
                            <p class="price">{{ item.prince }}<span>{{ item.common }}</span></p>
                        </div>
                    </router-link>
                </div>
            </van-list>
        </div>
    </div>
</template>

<script>
export default {
    name: 'HomeShopping',
    mounted() {
        this.$store.dispatch('shoppinglist')
        this.$store.commit('setshoppinglistdatas')
    },
    computed: {

    },
    data() {
        return {
            list: [],
            loading: false,
            finished: false,
        };
    },
    methods: {
        onLoad() {
            // 异步更新数据
            // setTimeout 仅做示例，真实场景中一般为 ajax 请求
            setTimeout(() => {
                for (let i = 0; i < 10; i++) {
                    this.list.push(this.list.length + 1);
                }

                // 加载状态结束
                this.loading = false;

                // 数据全部加载完成
                if (this.list.length >= 20) {
                    this.finished = true;
                }
            }, 1000);
        },
    },
};
</script>

<style lang="less" scoped>
/deep/ .van-list__finished-text {
    margin-left: 16.8rem;
}

/deep/ .van-loading__text {
    margin-left: 16.5rem;
}

.HomeShopping>div {
    width: 37.5rem;
    height: 3rem;
    background-color: #f7f7f7;
}

.like>img {
    width: 35rem;
    height: 3rem;
    margin-left: 1.25rem;
}

.contentshop {
    width: 37.5rem;
    height: 100% !important;
    padding-bottom: 4.5rem;
}

.van-list {
    display: flex;
    flex-wrap: wrap;
}

.ListALl {
    width: 17rem;
    height: 26.2rem;
    background-color: rgb(255, 255, 255);
    margin-left: 1.2rem;
    border-radius: 1rem;
}

.ListALl:nth-of-type(even) {
    margin-left: 1.1rem;
}

//选中3到最后一个元素
.ListALl:nth-child(n+3) {
    margin-top: 1rem;
}

.itemShop>div:nth-of-type(1),
.shoppImg {
    width: 17rem;
    height: 17rem;
    border-top-left-radius: 1rem;
    border-top-right-radius: 1rem;
    background-color: rgb(255, 255, 255);
}

.itemShop>p:nth-of-type(1) {
    width: 16rem;
    height: 3.4rem;
    background-color: rgb(255, 255, 255);
    margin-left: 0.5rem;
    margin-top: 0.8rem;
    font-size: 1.3rem;
    font-weight: bold;
    color: #333;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    word-break: break-all;
    -webkit-line-clamp: 2;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */

}

.itemShop>div:nth-of-type(2) {
    width: 16rem;
    height: 1.2rem;
    margin-left: 0.5rem;
    margin-top: 0.8rem;
    background-color: rgb(255, 255, 255);
}

.itemShop>p:nth-of-type(2) {
    width: 16rem;
    height: 1.8rem;
    margin-left: 0.5rem;
    margin-top: 0.8rem;
    background-color: #ffffff;
}

.detailImg {
    height: 1.2rem;
}

.detail span {
    display: inline-block;
    font-size: 1rem;
    background-color: #ffffff;
    height: 1.2rem;
    line-height: 1.2rem;
    margin-top: -10rem;
    padding: 0rem .5rem;
    border-radius: .4rem;
    color: #333;
    border: 1px solid #FFBB00;
    position: relative;
    bottom: 0.12rem;
}

.detail>span:nth-last-of-type(1) {
    margin-left: .3rem;
}

.price {
    font-size: 1.5rem;
    color: #FF4422;
}

.price>span {
    display: inline-block;
    font-size: 1.2rem;
    color: #999999;
    line-height: 1.8rem;
    margin-left: 0.8rem;
}
</style>