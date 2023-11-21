<template>
    <div class="SearchView">
        <div>
            <div @click="goBack">
                <img src="../assets//img/return.png" alt="">
            </div>
            <input type="text" v-model="value" placeholder="请输入您想找的商品">
            <img src="../assets/img/search1.png" alt="" class="imgSearch">
            <router-link to="/search/searched">
                <button @click="onSearch">搜索</button>
            </router-link>
        </div>
        <div>
            <router-view :inputVal="value"></router-view>
        </div>
    </div>
</template>

<script>
import Search from '../components/search/Search.vue';
export default {
    name: 'SearchView',
    mounted() {
        this.$store.commit('setsearchdatas')
    },
    data() {
        return {
            value: '',
            sdata: ''
        }
    },
    components: {
        Search
    },
    methods: {
        onSearch() {
            if (this.value === '') {
                alert('请输入你要搜索的内容')
            }
            else {
                let params = {
                    inputVal: this.value
                }
                this.$store.dispatch('search', params)
            }
        },
        goBack() {
            this.$router.go(-1);
        }
    },
}
</script>

<style lang="less" scoped>
.SearchView {
    width: 37.5rem;
    height: 57.7rem;
    background-color: #ffffff !important;
}

.SearchView>div:nth-of-type(1) {
    width: 37.5rem;
    height: 4.4rem;
    display: flex;
    position: relative;
    border: 1px solid #e8e8e8;
    background-color: #fff;
}

.SearchView>div:nth-of-type(1) img {
    width: 2.3rem;
    height: 2.3rem;
    margin-top: .87rem;
    margin-left: .9rem;
}

.SearchView>div:nth-of-type(1) input {
    width: 25.6rem;
    height: 3rem;
    background-color: #eeeeee;
    border: none;
    margin-top: .6rem;
    margin-left: 1rem;
    font-size: 1.3rem;
    padding-left: 2.5rem;
    color: #000;
    border-radius: .4rem;
}

.imgSearch {
    width: 1.3rem !important;
    height: 1.3rem !important;
    position: absolute;
    top: .6rem;
    left: 4rem;
}

.SearchView>div:nth-of-type(1) button {
    width: 4.4rem;
    height: 4.4rem;
    margin-left: .5rem;
    font-size: 1.5rem;
    color: #353d44;
    border: none;
    background-color: #fff;
}
</style>