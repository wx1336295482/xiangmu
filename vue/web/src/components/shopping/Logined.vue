<template>
    <div class="Logined">
        <div v-if="!this.$store.state.Shopcardataslist" class="moren">
            <img src="../../assets/img/gwc.png" alt="">
            <p>购物车还是空的，快来挑选好货吧</p>
            <router-link to="/home">
                <button>去逛逛</button>
            </router-link>
        </div>
        <div class="shoplists" v-if="this.$store.state.Shopcardataslist">
            <div v-for="(item, index) in this.$store.state.Shopcardataslist" :key="item.id">
                <div>
                    <span v-show="false" ref="myid">{{ item.id }}</span>
                    <div class="checks">
                        <input type="checkbox" :name="item.content" ref="mycheckbox" :value="item.prices"
                            @click="getData(index, item.prices * item.total)">
                    </div>
                    <div class="imgss">
                        <img :src=item.img alt="">
                    </div>
                    <div class="texts">
                        <p>{{ item.content }}</p>
                        <p>{{ item.title }}</p>
                        <p>￥<span ref="myprices">{{ item.prices }}</span>.00</p>
                        <div class="btn">
                            <van-stepper theme="round" button-size="22" disable-input @change="changeNum($event, index)" />
                        </div>
                    </div>
                    <div class="delete">
                        <span @click="deletes">删除</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="tjdd" v-if="this.$store.state.Shopcardataslist">
            <van-submit-bar :price="total" button-text="提交订单" @submit="onSubmit">
                <input @click="checkAll()" type="checkbox" class="checkAlls" ref="mycheckAll">全选
            </van-submit-bar>
        </div>
    </div>
</template>

<script>
import { Dialog } from 'vant';
export default {
    name: 'Logined',
    mounted() {
        this.$store.commit('setShopcardataslist')
        this.$store.dispatch('Shopcardataslist')
    },
    data() {
        return {
            result: [],
            prices: [],
            total: 0,
            value: 1,
        };
    },
    methods: {
        getData(ids, sum) {
            // 假设所有复选框都被选中
            let allChecked = true;
            if (this.$refs.mycheckbox[ids].checked === false) {
                this.total -= parseInt(100 * sum)
            } else {
                this.total += parseInt(100 * sum)
            }
            for (let i = 0; i < this.$store.state.Shopcardataslist.length; i++) {
                if (this.$refs.mycheckbox[i].checked === false) {
                    allChecked = false; // 如果有一个复选框未被选中，将allChecked设置为false
                }
            }
            if (allChecked) {
                this.$refs.mycheckAll.checked = true
            } else {
                this.$refs.mycheckAll.checked = false
            }
        },
        checkAll() {
            this.total = 0
            this.$store.state.Shopcardataslist.forEach((item, i) => {
                if (this.$refs.mycheckAll.checked === true) {
                    this.$refs.mycheckbox[i].checked = true
                    this.total += parseInt(item.prices * item.total) * 100
                } else {
                    this.$refs.mycheckbox[i].checked = false
                    this.total = 0
                }
            })
        },
        deletes() {
            Dialog.confirm({
                title: '是否确认删除',
            })
                .then(() => {
                    let params = {
                        ids: this.$refs.myid[0].innerHTML
                    }
                    this.$store.commit('setDeletedatas')
                    this.$store.dispatch('Deletedatas', params)
                    window.location.reload();
                })
                .catch((error) => {
                    console.log(error);
                });
        },
        onSubmit() {
            for (let i = 0; i < this.$store.state.Shopcardataslist.length; i++) {
                let params = {
                    ids: this.$refs.myid[i].innerHTML
                }
                this.$store.commit('setDeletedatas')
                this.$store.dispatch('Deletedatas', params)
            }
            window.location.reload();
            alert('提交成功')
        },
        //更改数量
        changeNum(num, ID) {
            this.total = 0;
            this.$store.state.Shopcardataslist.forEach((element, i) => {
                if (ID === i) {
                    element.total = num;
                }
                if (this.$refs.mycheckbox[i].checked === true) {
                    this.total += parseInt(element.prices * element.total) * 100;
                }
            });
        },
    },
}
</script>

<style lang="less" scoped>
.Logined {
    width: 35.1rem;
    margin-left: 1.2rem;
}

.moren {
    width: 35.1rem !important;
    height: 26.8rem !important;
}

.moren>img {
    width: 8.75rem;
    height: 8.75rem;
    margin-left: 13rem;
    margin-top: 7rem;
}

.moren>p {
    width: 21rem;
    height: 2.1rem;
    margin-left: 7.9rem;
    font-size: 1.4rem;
    margin-top: 1rem;
    color: #666;
}

.moren button {
    width: 5.4rem;
    height: 2.4rem;
    border: .1rem solid #dbdbdb;
    border-radius: .5rem;
    font-size: 1.2rem;
    margin-left: 15.2rem;
    margin-top: 1rem;
    background-color: #fff;
    color: #666;
}

.shoplists {
    width: 35.1rem;
}

.shoplists>div {
    width: 35.1rem;
    height: 12.6rem;
    margin-top: 1.2rem;
    background-color: rgb(255, 255, 255);
    padding-top: 1.2rem;
    overflow: scroll;
    -ms-overflow-style: none;
    /* 隐藏IE和Edge浏览器的滚动条 */
    scrollbar-width: none;
    /* 隐藏Firefox浏览器的滚动条 */
    overflow: -moz-scrollbars-none;
    /* 隐藏老版本的Firefox滚动条 */
    // // overflow-x: hidden;
    // white-space: nowrap;
    // /* 防止内容换行 */
    border-radius: .5rem;
    position: relative;
}

.shoplists>div::-webkit-scrollbar {
    display: none;
    /* 隐藏Chrome、Safari等浏览器的滚动条 */
}

.shoplists>div>div:nth-of-type(1) {
    width: 35.1rem;
    height: 11.1rem;
    // background-color: antiquewhite;
    display: flex;
}

.delete {
    width: 5rem;
    height: 11.1rem;
    background-color: #ff6600;
    text-align: center;
    position: absolute;
    left: 35.2rem;
}

.delete>span {
    font-size: 1.4rem;
    line-height: 11.1rem;
    color: #fff;
}

.shoplists>div>div>div {
    height: 11.1rem;
}

.checks {
    width: 3rem;
    height: 9rem !important;
    // background-color: #666;
}

.imgss,
.imgss>img {
    width: 9rem;
    height: 9rem !important;
    // background-color: rgb(255, 162, 40);
}

.texts {
    width: 21.9rem;
    // background-color: #fff;
    position: relative;
}

input[type="checkbox"] {
    width: 1.8rem;
    height: 1.8rem;
    margin-left: .6rem;
    margin-top: 3.6rem;
    appearance: none;
    position: relative;
}

/** 未被选中的样式*/
input[type="checkbox"]::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    background: #fff;
    width: 100%;
    height: 100%;
    border: 1px solid #7d7d7d;
    border-radius: 1.8rem;
}

/** 选中的样式 */
input[type="checkbox"]:checked::before {
    content: "\2713";
    /* 2713表示勾勾✓ */
    font-size: #222;
    background-color: #ffd016;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 1px solid #7d7d7d;
    border-radius: .9rem;
    color: #7d7d7d;
    font-size: 1.5rem;
    font-weight: bold;
    text-align: center;
    line-height: 1.8rem
}

.texts>p:nth-of-type(1) {
    width: 20.9rem;
    height: 3.6rem;
    font-size: 1.3rem;
    color: #222;
    font-weight: bold;
    overflow: hidden;
    margin-left: 1rem;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */
    word-break: break-all;
}

.texts>p:nth-of-type(2) {
    width: 10.4rem;
    height: 1.6rem;
    font-size: 1.2rem;
    color: #333;
    background-color: #f6f6f6;
    overflow: hidden;
    margin-left: 1rem;
    margin-top: 1rem;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */
    word-break: break-all;
}

.texts>p:nth-of-type(3) {
    height: 2.1rem;
    width: 8rem;
    margin-left: 1rem;
    margin-top: 1.6rem;
    font-size: 1.2rem;
    font-weight: bold;
    color: #ff4422;
    line-height: 2.1rem;
}

.texts>p:nth-of-type(3)>span {
    font-size: 1.4rem;
}

.btn {
    width: 9rem;
    height: 2.7rem;
    // background-color: #ffd3d3;
    border-radius: 1.35rem;
    position: absolute;
    top: 7rem;
    right: 1rem;
    border: 1px solid #cacaca;
}

.van-stepper {
    margin-top: .3rem;
    margin-left: .4rem;
}

/deep/.van-stepper__minus,
/deep/.van-stepper__plus {
    width: 2.1rem !important;
    height: 2.1rem !important;
    background-color: #b1b1b1;
}

/deep/.van-stepper__minus {
    background-color: #ebebeb;
}

/deep/.van-stepper--round .van-stepper__minus {
    color: #000000 !important;
    border: 1px solid #cacaca !important;
}

/deep/.van-stepper__plus {
    color: #000;
    border: 1px solid #cacaca !important;
    background-color: #ebebeb;
}

/deep/.van-stepper__input {
    width: 3.8rem;
    height: 1.38rem;
    font-size: 1.2rem;
}

.tjdd,
.van-submit-bar,
.van-submit-bar__bar {
    width: 37.5rem;
    height: 4.5rem;
    background-color: #ffffff;
    z-index: 1;
    position: fixed;
    bottom: 5rem;
    left: 0rem;
    font-size: 1.4rem;
    color: #000;
}

.checkAlls {
    // background-color: #ff6600;
    position: fixed;
    bottom: 1.9rem;
    left: -1rem;
}

/deep/.van-button {
    width: 10rem;
    height: 3.3rem;
}

/deep/.van-button--danger {
    font-size: 1.4rem;
    color: #222;
    background-color: #fc0 !important;
}
</style>