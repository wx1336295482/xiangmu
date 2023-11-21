<template>
    <div class="HomeNav">
        <div>
            <router-link to="/home">
                <img src="../../assets/img/homenav.png" alt="">
                <p>首页</p>
            </router-link>
        </div>
        <div>
            <img src="../../assets/img/classifynav.png" alt="">
            <p class="check">分类</p>
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
                <p>我的易购</p>
            </router-link>
            <router-link to="/my" v-show="logins">
                <img src="../../assets/img/nav5.png" alt="">
                <p>我的易购</p>
            </router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: 'HomeNav',
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
.HomeNav {
    width: 37.5rem;
    height: 5rem;
    background-color: rgb(255, 255, 255);
    position: fixed;
    bottom: 0rem;
    left: 0rem;
    display: flex;
}

.HomeNav>div {
    width: 7.5rem;
    height: 5rem;
    // background-color: antiquewhite;
}

.HomeNav img {
    width: 2.4rem;
    height: 2.4rem;
    margin-left: 2.5rem;
    margin-top: .6rem;
}

.HomeNav p {
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