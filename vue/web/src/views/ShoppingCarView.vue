<template>
    <div class="ShoppingCarView">
        <div>
            <div>
                <span>购物车</span>
                <img src="../assets/img/shoppingdw.png" alt="">
                <span>武昌区</span>
            </div>
        </div>
        <div>
            <BeforeLogin v-show="!this.logins"></BeforeLogin>
            <Logined v-show="this.logins"></Logined>
        </div>
        <div v-show="this.logins" class="hs">
            <HomeShopping></HomeShopping>
        </div>
        <div>
            <ShoppingNav></ShoppingNav>
        </div>
    </div>
</template>

<script>
import ShoppingNav from '../components/public/ShoppingNav.vue';
import BeforeLogin from '../components/shopping/BeforeLogin.vue';
import Logined from '../components/shopping/Logined.vue';
import HomeShopping from '../components/home/HomeShopping.vue';
export default {
    name: 'ShoppingCarView',
    components: {
        ShoppingNav,
        BeforeLogin,
        Logined,
        HomeShopping,
    },
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
.ShoppingCarView {
    width: 37.5rem;
    background-color: #f5f5f9 !important;
}

.ShoppingCarView>div:nth-of-type(1) {
    width: 37.5rem;
    height: 4.4rem;
    background-color: rgb(255, 255, 255);
    border: 1px solid #e5e5e5;
    border-left: none;
}

.ShoppingCarView>div:nth-of-type(1)>div {
    width: 10.6rem;
    height: 4.4rem;
    margin: 0px auto;
}

.ShoppingCarView>div:nth-of-type(1) span:nth-of-type(1) {
    font-size: 1.7rem;
    color: #222;
    line-height: 4.4rem;
}

.ShoppingCarView>div:nth-of-type(1) img {
    width: .9rem;
    height: 1rem;
    margin-left: .8rem;
}

.ShoppingCarView>div:nth-of-type(1) span:nth-of-type(2) {
    font-size: 1.2rem;
    color: #000;
    margin-left: .2rem;
}

.hs {
    margin-top: 1rem;
}
</style>