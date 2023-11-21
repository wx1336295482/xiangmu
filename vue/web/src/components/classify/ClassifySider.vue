<template>
    <div class="ClassifySider">
        <van-sidebar v-model="activeKey" @change="onChange">
            <van-sidebar-item title="热门推荐" />
            <van-sidebar-item title="手机" />
            <van-sidebar-item title="空调" />
            <van-sidebar-item title="冰箱" />
            <van-sidebar-item title="洗衣机" />
            <van-sidebar-item title="厨卫大电" />
            <van-sidebar-item title="生活家电" />
            <van-sidebar-item title="电脑" />
            <van-sidebar-item title="办公用品" />
            <van-sidebar-item title="智能数码" />
            <van-sidebar-item title="食品酒饮" />
            <van-sidebar-item title="家装建材" />
            <van-sidebar-item title="母婴用品" />
            <van-sidebar-item title="个护全家" />
            <van-sidebar-item title="家纺" />
            <van-sidebar-item title="苏宁奥莱" />
            <van-sidebar-item title="苏宁宜品" />
            <van-sidebar-item title="苏宁国际" />
            <van-sidebar-item title="苏宁超市" />
            <van-sidebar-item title="女装" />
            <van-sidebar-item title="运动户外" />
            <van-sidebar-item title="珠宝首饰" />
            <van-sidebar-item title="宠物鲜花" />
            <van-sidebar-item title="滋补保健" />
            <van-sidebar-item title="厨具水具" />
            <van-sidebar-item title="苏宁生鲜" />
            <van-sidebar-item title="汽车生活" />
            <van-sidebar-item title="童装玩具" />
            <van-sidebar-item title="箱包" />
            <van-sidebar-item title="内衣配饰" />
            <van-sidebar-item title="图书音像" />
            <van-sidebar-item title="苏宁极物" />
            <van-sidebar-item title="礼品乐器" />
            <van-sidebar-item title="星图金融" />
            <van-sidebar-item title="苏宁服务" />
        </van-sidebar>
        <div class="contentClass">
            <component :is="comp"></component>
        </div>
    </div>
</template>

<script>
import ClassifyHot from './ClassifyHot.vue';
import ClassifyIphone from './ClassifyIphone.vue';
import ClassifyAir from './ClassifyAir.vue';
export default {
    name: 'ClassifySider',
    components: { ClassifyHot, ClassifyIphone, ClassifyAir },
    data() {
        return {
            value: '',
            activeKey: 0,
            comp: "ClassifyHot",
            compArr: []
        }
    },
    methods: {
        onChange(index) {
            this.compArr = Object.keys(this.$options.components)
            this.compArr.pop()
            this.comp = this.compArr[index]
        }
    }
}
</script>

<style lang="less" scoped>
.ClassifySider {
    width: 37.5rem;
    background-color: rgb(255, 255, 255);
    display: flex;
    margin-top: 5.4rem;
}

.contentClass {
    width: 28.5rem;
    // background-color: #ffcc00;
}

.van-sidebar {
    width: 9rem;
    height: 47.7rem;
}

.van-sidebar-item {

    width: 9rem;
    height: 5rem;
    font-size: 1.4rem;
    color: #666;
    text-align: center;
    line-height: 1rem;
}


.van-sidebar-item--select {
    color: #000;
    font-weight: bold;
}

.van-sidebar-item--select::before {
    background-color: #ffcc00;
    width: .4rem;
    border-radius: .2rem;
    left: .5rem;
}
</style>