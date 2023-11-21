<template>
    <div class="MyNav">
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
            <router-link to="/shopping">
                <img src="../../assets/img/nav4.png" alt="">
                <p>购物车</p>
            </router-link>
        </div>
        <div>
            <router-link to="/login" v-show="!logins">
                <img src="../../assets/img/nav5.png" alt="">
                <p class="check">我的易购</p>
            </router-link>
            <img src="../../assets/img/goshopping.png" alt="" v-show="logins">
            <p class="check" v-show="logins">我的易购</p>
        </div>
    </div>
</template>

<script>
export default {
    name: 'MyNav',
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
.MyNav {
    width: 37.5rem;
    height: 5rem;
    background-color: rgb(255, 255, 255);
    position: fixed;
    bottom: 0rem;
    left: 0rem;
    display: flex;
}

.MyNav>div {
    width: 7.5rem;
    height: 5rem;
    // background-color: antiquewhite;
}

.MyNav img {
    width: 2.4rem;
    height: 2.4rem;
    margin-left: 2.5rem;
    margin-top: .6rem;
}

.MyNav p {
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