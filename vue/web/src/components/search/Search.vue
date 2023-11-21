<template>
    <div class="search">
        <div>热门搜索</div>
        <div>
            <ul v-for="item in list" :key="item.id">
                <li v-if="item.id === 1" @click="take">{{ item.name }}</li>
                <li v-else>{{ item.name }}</li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    name: 'search',
    data() {
        return {
            list: [
                {
                    id: 1,
                    name: '手机'
                },
                {
                    name: '三星手机'
                },
                {
                    name: '创维平板电视'
                },
                {
                    name: '冰箱'
                },
                {
                    name: '电视'
                },
                {
                    name: '海尔冰箱'
                },
                {
                    name: '苏宁好酒'
                },
                {
                    name: 'ipad'
                },
                {
                    name: '热水器'
                },
                {
                    name: '沙发'
                },
                {
                    name: '电饭煲'
                },
                {
                    name: '电动车'
                },
                {
                    name: '茅台'
                },
                {
                    name: '尿不湿'
                },
                {
                    name: '红枣'
                },
                {
                    name: '化妆品'
                },
                {
                    name: '洗衣机'
                },
                {
                    name: '华为'
                },
                {
                    name: '笔记本'
                },
                {
                    name: '65寸电视'
                },
                {
                    name: '吸尘器'
                },
                {
                    name: '帽子'
                },
                {
                    name: '消毒柜'
                },
                {
                    name: '玩具'
                },
                {
                    name: '彩妆'
                },
                {
                    name: '牛奶'
                },
                {
                    name: '大米'
                },
            ]
        }
    },
    mounted() {
        this.$store.commit('setsearchdatas')
    },
    methods: {
        take() {
            let params = {
                inputVal: '手机'
            }
            this.$store.dispatch('search', params)
            this.$router.push('/search/searched');
        }
    }
}
</script>

<style lang="less" scoped>
.search>div:nth-of-type(1) {
    width: 34.7rem;
    height: 2.4rem;
    font-size: 1.5rem;
    color: #999;
    line-height: 2.4rem;
    margin-left: 1.5rem;
    margin-top: 2rem;
}

.search>div:nth-of-type(2) {
    width: 34.7rem;
    margin-left: 1.5rem;
    font-size: 1.3rem;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.search>div:nth-of-type(2) li {
    width: 10.9rem;
    height: 3rem;
    background-color: #f2f2f2;
    border-radius: .3rem;
    text-align: center;
    line-height: 3rem;
    margin-top: 1rem;
}
</style>