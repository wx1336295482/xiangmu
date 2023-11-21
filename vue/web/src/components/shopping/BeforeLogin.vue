<template>
    <div class="BeforeLogin">
        <div>
            <span>登录后同步电脑与手机购物车的商品</span>
            <router-link to="/login">
                去登录
            </router-link>
        </div>
        <div>
            <img src="../../assets/img/shoppingB.png" alt="">
            <P>购物车还是空的，快来挑选好货吧</P>
            <router-link to="/home">
                去逛逛
            </router-link>
        </div>
        <div>
            <div></div>
            <span>没有更多啦</span>
            <div></div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'BeforeLogin'
}
</script>

<style lang="less" scoped>
.BeforeLogin {
    width: 37.5rem;
    background-color: #f2f2f2;
}

.BeforeLogin>div:nth-of-type(1) {
    width: 35.1rem;
    height: 3rem;
    background-color: #ffe37e;
    border-radius: .5rem;
    margin-left: 1.2rem;
    margin-top: 1.2rem;
}

.BeforeLogin>div:nth-of-type(1) span {
    font-size: 1.2rem;
    color: #222;
    line-height: 3rem;
    margin-left: 1rem;
}

.BeforeLogin>div:nth-of-type(1) a {
    display: inline-block;
    width: 4rem;
    height: 2rem;
    background-color: #222;
    color: #ffe37e;
    font-size: 1.2rem;
    line-height: 2rem;
    text-align: center;
    border-radius: .2rem;
    margin-left: 9.7rem;
}

.BeforeLogin>div:nth-of-type(2) {
    width: 35.1rem;
    margin-left: 1.2rem;
}

.BeforeLogin>div:nth-of-type(2) img {
    width: 8.75rem;
    height: 8.75rem;
    margin-left: 13.175rem;
    margin-top: 8rem;
}

.BeforeLogin>div:nth-of-type(2) p {
    width: 21rem;
    height: 2.1rem;
    font-size: 1.4rem;
    line-height: 2.1rem;
    color: #666;
    margin: 0px auto;
    margin-top: 2rem;
}

.BeforeLogin>div:nth-of-type(2) a {
    display: inline-block;
    width: 5.4rem;
    height: 2.4rem;
    background-color: #fff;
    font-size: 1.2rem;
    color: #666;
    line-height: 2.4rem;
    border-radius: .4rem;
    margin-left: 14.85rem;
    text-align: center;
    margin-top: 1.5rem;
    border: 1px solid #d2d2d2;
}

.BeforeLogin>div:nth-last-of-type(1) {
    width: 21rem;
    height: 1.2rem;
    margin-left: 8.3rem;
    margin-top: 8rem;
    display: flex;
    justify-content: space-between;
}

.BeforeLogin>div:nth-last-of-type(1)>div {
    width: 6rem;
    height: .1rem;
    background-color: #e3e3e5;
    margin-top: .5rem;
}

.BeforeLogin>div:nth-last-of-type(1) span {
    font-size: 1.2rem;
    color: #a6a6a6;
    line-height: 1.2rem;
}
</style>