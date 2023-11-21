<template>
    <div class="MyTop">
        <div>
            <p>我的易购</p>
            <router-link to="/accountset">
                <img src="../../assets/img/setup.png" alt="">
            </router-link>
        </div>
        <div>
            <div class="information">
                <span>去实名认证</span>
                <img src="../../assets/img/photo.jpg" alt="">
                <p>{{ logins }}</p>
                <P>生态值30</P>
            </div>
            <div>
                <img src="../../assets/img/erwm.png" alt="">
                <P>会员码</P>
            </div>
        </div>
        <div>
            <div>
                <p>0</p>
                <P>优惠券</P>
            </div>
            <div>
                <p>0</p>
                <P>领云钻</P>
            </div>
            <div>
                <p>0</p>
                <P>足迹</P>
            </div>
            <div>
                <p>0</p>
                <P>我的关注</P>
            </div>
        </div>
        <div class="bank">
            <img src="../../assets/img/bankcard.png" alt="">
            <p>银行联名卡，办卡得Super</p>
            <p>立即查看<span><img src="../../assets/img/rightjt.png" alt=""></span></p>
        </div>
    </div>
</template>

<script>
export default {
    name: 'MyTop',
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
            const parsedLogins = JSON.parse(window.sessionStorage.getItem('logindatas')); // 将 JSON 字符串解析为对象
            return this.logins = parsedLogins;
        }
    }
}
</script>

<style lang="less" scoped>
.MyTop>div:nth-of-type(1) {
    width: 37.5rem;
    height: 3.2rem;
    background-color: #ffdb47;
    position: relative;
}

.MyTop>div:nth-of-type(1)>P {
    width: 37.5rem;
    height: 2.7rem;
    font-size: 1.8rem;
    color: #000;
    text-align: center;
    line-height: 2.7rem;
    position: absolute;
    top: .5rem;
    font-weight: bold;
}

.MyTop>div:nth-of-type(1) img {
    width: 2.5rem;
    height: 2.5rem;
    position: absolute;
    right: 1.5rem;
    top: .7rem;
}

.MyTop>div:nth-of-type(2) {
    width: 37.5rem;
    height: 8.65rem;
    background-color: #ffdb47;
    position: relative;
}

.information {
    width: 32.5rem;
    height: 6rem;
    position: absolute;
    top: 2.65rem;
    left: 2rem;
    // background-color: red;
    position: relative;
}

.information img {
    width: 6rem;
    height: 6rem;
    border-radius: 3rem;
}

.information span {
    display: inline-block;
    width: 7.1rem;
    height: 1.5rem;
    font-size: 1.2rem;
    line-height: 1.5rem;
    text-align: center;
    border-radius: .75rem;
    background-color: #FFECA3;
    position: absolute;
    bottom: 0rem;
    left: -0.5rem;
}

.information p:nth-of-type(1) {
    width: 7.1rem;
    height: 2.1rem;
    font-size: 1.4rem;
    font-weight: 600;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    /* 显示的行数 */
    -webkit-box-orient: vertical;
    /* 垂直排列文本 */
    position: absolute;
    top: 1rem;
    left: 7.5rem;
}

.information p:nth-of-type(2) {
    width: 6.1rem;
    height: 1.5rem;
    font-size: 1.2rem;
    background-color: #E1BB23;
    line-height: 1.5rem;
    border-radius: 7.5rem;
    text-align: center;
    color: #fff;
    position: absolute;
    top: 3.2rem;
    left: 7.5rem;
}

.MyTop>div:nth-of-type(2)>div:nth-of-type(2) {
    width: 6rem;
    height: 6rem;
    position: absolute;
    top: 2.65rem;
    right: 2rem;
    border-radius: .6rem;
    background-color: #ffe67e;
}

.MyTop>div:nth-of-type(2)>div:nth-of-type(2) img {
    width: 2.5rem;
    height: 2.5rem;
    margin-left: 1.5rem;
    margin-top: 1rem;
}

.MyTop>div:nth-of-type(2)>div:nth-of-type(2) p {
    font-size: 1.2rem;
    font-weight: 500;
    margin-left: 1rem;
    margin-top: -0.1rem;
}

.MyTop>div:nth-of-type(3) {
    width: 37.5rem;
    height: 8.75rem;
    background-color: #ffdb47;
    display: flex;
}

.MyTop>div:nth-of-type(3) div {
    width: 9.375rem;
    height: 8.75rem;
    // background-color: rgb(255, 143, 143);
}

.MyTop>div:nth-of-type(3) p {
    width: 9.375rem;
    height: 2.25rem;
    font-size: 1.5rem;
    color: #222222;
    text-align: center;
    font-weight: 500;
}

.MyTop>div:nth-of-type(3) p:nth-of-type(1) {
    font-weight: bold;
}

.MyTop>div:nth-of-type(3) p:nth-of-type(1) {
    margin-top: 2.125rem;
}

.MyTop>div:nth-of-type(3) p:nth-of-type(2) {
    font-size: 1.3rem;
}

.bank {
    width: 35.1rem;
    height: 4.5rem;
    background-color: #fff;
    border-radius: .5rem;
    margin-left: 1.2rem;
    margin-top: -1.5rem;
    display: flex;
}

.bank img {
    width: 4.5rem;
    height: 3rem;
    margin-top: .75rem;
    margin-left: 1rem;
}

.bank p:nth-of-type(2),
.bank p:nth-of-type(1) {
    width: 19rem;
    height: 1.8rem;
    font-size: 1.2rem;
    line-height: 1.8rem;
    margin-top: 1.35rem;
    margin-left: .75rem;
}

.bank p:nth-of-type(2) {
    width: 5rem;
    margin-left: 2.5rem;
    position: relative;
}

.bank p:nth-of-type(2) img {
    width: 1.5rem;
    height: 1.5rem;
    margin-left: .5rem;
    position: absolute;
    top: -.6rem;
}
</style>