<template>
    <div class="ShoppingNav">
        <div>
            <router-link to="/home">
                <img src="../../assets/img/homenav.png" alt="">
                <p>首页</p>
            </router-link>
        </div>
        <div>
            <router-link to="/classify">
                <img src="../../assets/img/nav2.png" alt="">
                <p>分类</p>
            </router-link>
        </div>
        <div>
            <img src="../../assets/img/nav3.png" alt="">
            <p>排行榜</p>
        </div>
        <div>
            <img src="../../assets/img/shopping.png" alt="">
            <p class="check">购物车</p>
        </div>
        <div>
            <router-link to="/login" v-show="!logins">
                <img src="../../assets/img/nav5.png" alt="">
                <p>我的易购</p>
            </router-link>
            <router-link to="/My" v-show="logins">
                <img src="../../assets/img/nav5.png" alt="">
                <p>我的易购</p>
            </router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: 'ShoppingNav',
    data() {
        return {
            logins: ''
        }
    },
    mounted() {
        this.logines()
    },
    methods: {
        logines() {
            this.logins = window.sessionStorage.getItem('logindatas')
        }
    }


}
</script>

<style lang="less" scoped>
.ShoppingNav {
    width: 37.5rem;
    height: 5rem;
    background-color: rgb(255, 255, 255);
    position: fixed;
    bottom: 0rem;
    left: 0rem;
    display: flex;
}

.ShoppingNav>div {
    width: 7.5rem;
    height: 5rem;
    // background-color: antiquewhite;
}

.ShoppingNav img {
    width: 2.4rem;
    height: 2.4rem;
    margin-left: 2.5rem;
    margin-top: .6rem;
}

.ShoppingNav p {
    width: 7.5rem;
    height: 1.6rem;
    font-size: 1.2rem;
    text-align: center;
    margin-top: -0.2rem;
    color: #666;
}

.check {
    color: black;
    font-weight: bold;
}
</style>