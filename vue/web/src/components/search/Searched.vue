<template>
    <div class="Searched">
        <div>
            <van-dropdown-menu class="top">
                <van-dropdown-item v-model="value" :options="option" title="综合" />
                <van-dropdown-item title='销量' />
                <van-dropdown-item title='价格' />
                <van-dropdown-item title="筛选" ref="item">
                    <van-cell center title="包邮">
                        <template #right-icon>
                            <van-switch v-model="switch1" size="24" active-color="#ee0a24" />
                        </template>
                    </van-cell>
                    <van-cell center title="团购">
                        <template #right-icon>
                            <van-switch v-model="switch2" size="24" active-color="#ee0a24" />
                        </template>
                    </van-cell>
                    <div style="padding: 5px 16px;">
                        <van-button type="danger" block round @click="onConfirm">
                            确认
                        </van-button>
                    </div>
                </van-dropdown-item>
            </van-dropdown-menu>
        </div>
        <div class="topTs">
            <van-dropdown-menu class="topT">
                <van-dropdown-item v-model="value" :options="option" title="苏宁服务 " />
                <van-dropdown-item title='品牌' />
                <van-dropdown-item title='国产/进口' />
                <van-dropdown-item title="包装" ref="item">
                    <van-cell center title="包邮">
                        <template #right-icon>
                            <van-switch v-model="switch1" size="24" active-color="#ee0a24" />
                        </template>
                    </van-cell>
                    <van-cell center title="团购">
                        <template #right-icon>
                            <van-switch v-model="switch2" size="24" active-color="#ee0a24" />
                        </template>
                    </van-cell>
                    <div style="padding: 5px 16px;">
                        <van-button type="danger" block round @click="onConfirm">
                            确认
                        </van-button>
                    </div>
                </van-dropdown-item>
            </van-dropdown-menu>
        </div>
        <div v-show="!this.$store.state.searchdatas" class="nosearch">
            <img src="../../assets/img/nosearch.png" alt="">
            <p>抱歉，没有找到相关商品</p>
            <p>您可以输入其他关键词试试看</p>
            <p>说说您使用搜索的感受</p>
        </div>
        <div>
            <div v-for="item in this.$store.state.searchdatas" :key="item.id" class="list">
                <div>
                    <img :src="item.img" alt="">
                </div>
                <div class="texts">
                    <span>
                        <span v-show="item.imgx">{{ item.imgx }}
                        </span>
                        {{ item.title }}
                    </span>
                    <p>{{ item.content }}</p>
                    <p>￥{{ item.price }}</p>
                    <span>
                        <span v-show="item.juan">{{ item.juan }}</span>
                        <span v-show="item.juantwo">{{ item.juantwo }}</span>
                    </span>
                    <p>
                        <span>{{ item.common }}</span>
                        <span>{{ item.percent }}</span>
                    </p>
                    <p>
                        <span>{{ item.store }}</span>
                        <span>进店&nbsp;></span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Searched',
    data() {
        return {
            value: 0,
            switch1: false,
            switch2: false,
            option: [
                { text: '全部商品', value: 0 },
                { text: '新款商品', value: 1 },
                { text: '活动商品', value: 2 },
            ],
        };
    },
    methods: {
        onConfirm() {
            this.$refs.item.toggle();
        },

    },
}
</script>

<style lang="less" scoped>
.Searched {
    background-color: #fff;
}

.Searched>div:nth-of-type(1),
.Searched>div:nth-of-type(2),
.top {
    width: 37.5rem;
    height: 4.4rem;
    border-bottom: 1px solid #b0b0b0
}

.topT {
    width: 37.5rem;
    height: 2.8rem;
}

.top /deep/ .van-dropdown-menu__bar,
/deep/.van-dropdown-menu__bar,
.topTs {
    width: 37.5rem;
    height: 4.4rem;
}

.topT /deep/.van-dropdown-menu__title {
    width: 8.38rem;
    height: 2.8rem;
    background-color: #f5f5f5;
    text-align: center;
    line-height: 2.8rem;
    font-size: 1.2rem;
}

/deep/.van-dropdown-menu__title::after {
    display: none;
}

.top /deep/.van-dropdown-menu__item,
.top /deep/ .van-ellipsis {
    font-size: 1.4rem !important;
}

/deep/.van-dropdown-menu__item {
    height: 4.4rem;
}

/deep/.van-dropdown-menu__title--active,
/deep/.van-dropdown-item__option--active,
/deep/.van-switch--on {
    color: #f60;
}

.list {
    width: 35.5rem;
    height: 15rem;
    margin: 0px auto;
    margin-top: 1rem;
    display: flex;
}

.list img {
    width: 15rem;
    height: 15rem;
}

.texts {
    width: 19.5rem;
    height: 15rem;
    margin-left: 1rem;
    border-bottom: 1px solid #999;
}

.texts>span:nth-of-type(1)>span {
    display: inline-block;
    width: 2.96rem;
    height: 1.4rem;
    font-size: 1.2rem;
    text-align: center;
    line-height: 1.4rem;
    color: #f60;
    border: 1px solid #f60;
}

.texts>span:nth-of-type(1) {
    display: inline-block;
    width: 19.5rem;
    height: 3.5rem;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */
    word-break: break-all;
    font-size: 1.3rem;
    height: #333;
}

.texts>p:nth-of-type(1) {
    width: 19.5rem;
    height: 1.5rem;
    font-size: 1.2rem;
    color: #999;
}

.texts>p:nth-of-type(2) {
    width: 4.76rem;
    height: 2.26rem;
    font-size: 1.7rem;
    margin-top: 1rem;
    color: #FF6600;
}

.texts>span:nth-of-type(2) {
    display: block;
    margin-top: .5rem;
}

.texts>span:nth-of-type(2)>span {
    height: 1.2rem;
    color: #fff;
    font-size: 1.2rem;
    border-radius: .2rem;
    text-align: center;
    line-height: 1.2rem;
    padding: 0rem .2rem;
    background-color: #FF6600;
}

.texts>span:nth-of-type(2)>span:nth-of-type(2) {
    margin-left: .3rem;
}

.texts>p:nth-of-type(3) {
    margin-top: .5rem;
}

.texts>p:nth-of-type(3)>span {
    font-size: 1.2rem;
    color: #999;
}

.texts>p:nth-of-type(3)>span:nth-of-type(2) {
    margin-left: .5rem;
}

.texts>p:nth-of-type(4) {
    margin-top: .5rem;
    display: flex;
}

.texts>p:nth-of-type(4)>span:nth-of-type(1) {
    display: inline-block;
    width: 8.4rem;
    height: 1.4rem;
    font-size: 1.2rem;
    color: #999;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */

}

.texts>p:nth-of-type(4)>span:nth-of-type(2) {
    font-size: 1.2rem;
    color: #999;
    margin-left: .5rem;
}

.nosearch {
    width: 37.5rem;
    height: 44.5rem;
    background-color: #f2f2f2;
}

.nosearch img {
    width: 4.8rem;
    height: 6.6rem;
    margin-left: 16.37rem;
    margin-top: 8rem;
}

.nosearch p:nth-of-type(1) {
    width: 34.7rem;
    height: 2.7rem;
    text-align: center;
    font-size: 1.5rem;
    margin: 0px auto;
    color: #353535;
}

.nosearch p:nth-of-type(2) {
    width: 37.5rem;
    height: 2.5rem;
    color: #999;
    font-size: 1.3rem;
    text-align: center;
}

.nosearch p:nth-of-type(3) {
    width: 13.5rem;
    height: 2.2rem;
    color: #666;
    font-size: 1.2rem;
    line-height: 2.2rem;
    text-align: center;
    margin-left: 12rem;
    margin-top: 2rem;
    border: 1px solid #666;
}
</style>