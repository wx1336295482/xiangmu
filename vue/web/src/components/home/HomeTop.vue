<template>
    <div class="top">
        <div>
            <div>
                <router-link to="/classify">
                    <img src="../../assets/img/home5.png" alt="">
                </router-link>
            </div>
            <div>
                <img src="../../assets/img/home2.gif" alt="">
            </div>
            <div v-show="!this.logins">
                <router-link to="/login">
                    <img src="../../assets/img/home3.png" alt="">
                </router-link>
            </div>
            <div v-show="this.logins">
                <router-link to="/my">
                    <img src="../../assets/img/homemy.png" alt="">
                </router-link>
            </div>
        </div>
        <router-link to="/search/record">
            <div class="search">
                <img src="../../assets/img/search.png" alt="">
                <span>商品/店铺</span>
            </div>
        </router-link>
    </div>
</template>

<script>
export default {
    name: 'HomeTop',
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

<style scoped>
.top {
    width: 37.5rem;
    height: 9rem;
    overflow: hidden;
    position: relative;
    top: 0rem;
    left: 0rem;
    background-image: url('../../assets/img/home1.jpg');
    background-size: 100% 150%;
    background-position: 0rem -4rem;
}

.top>div:nth-of-type(1) {
    width: 37.5rem;
    height: 4.4rem;
    display: flex;
}

.top>div>div {
    height: 4.4rem;
}

.top>div>div:nth-of-type(1),
.top>div>div:nth-of-type(3) {
    width: 4.5rem;
}

.top>div>div:nth-of-type(1) img,
.top>div>div:nth-of-type(3) img,
.top>div>div:nth-of-type(4) img {
    width: 1.8rem;
    height: 3rem;
    margin-top: 0.8rem;
    margin-left: 1rem;
}

.top>div>div:nth-of-type(1) img {
    margin-left: 1.6rem;
}

.top>div>div:nth-of-type(2) img {
    width: 19.5rem;
    height: 3.8rem;
    margin-left: 5rem;
    margin-top: .5rem;
}

.top>div>div:nth-of-type(2) {
    width: 28.5rem;
}

.search {
    width: 35.1rem;
    height: 3.5rem;
    background-color: rgb(255, 255, 255);
    border-radius: 2.2rem;
    margin: 0px auto;
    margin-top: .6rem;
    position: relative;
}

.search>img {
    width: 2rem;
    height: 2rem;
    position: absolute;
    top: .75rem;
    left: 1.2rem;
}

.search>span {
    font-size: 1.6rem;
    color: #999999;
    position: absolute;
    top: .6rem;
    left: 3.8rem;
}
</style>