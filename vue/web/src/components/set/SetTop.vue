<template>
    <div class="SetTop">
        <div>
            <router-link to="/my">
                <img src="../../assets/img/return.png" alt="" class="imgr">
            </router-link>
            <p>账户设置</p>
            <router-link to="#">
                <img src="../../assets/img/gd.png" alt="" class="imggd">
            </router-link>
        </div>
        <div class="informations">
            <div>
                <img src="../../assets/img/photo.jpg" alt="">
            </div>
            <p>{{ logins }}</p>
            <div>
                <img src="../../assets/img/rightjt.png" alt="" class="rjt">
            </div>
        </div>
        <div>
            <div>
                <div>
                    <p>会员码</p>
                    <span>
                        <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                    </span>
                </div>
            </div>
            <div>
                <div>
                    <p>我的信息</p>
                    <span>
                        <span class="sp">添加宝宝/尺码等信息</span>
                        <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                    </span>
                </div>
            </div>
            <div>
                <div>
                    <p>地址管理</p>
                    <span>
                        <span class="sps">新增 / 修改地址</span>
                        <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                    </span>
                </div>
            </div>
        </div>
        <div>
            <div>
                <div>
                    <p>账户安全</p>
                    <span>
                        <router-link to="/upset">
                            <span class="spa">修改密码 / 修改手机</span>
                            <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                        </router-link>
                    </span>
                </div>
            </div>
            <div>
                <div>
                    <p>关联账号</p>
                    <span>
                        <span class="spas">微信等</span>
                        <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                    </span>
                </div>
            </div>
            <div>
                <div>
                    <p>地址管理</p>
                    <span>
                        <span class="spass">新增 / 修改地址</span>
                        <img src="../../assets/img/rightjt.png" alt="" class="rjts">
                    </span>
                </div>
            </div>
        </div>
        <button @click="exit">退出登录</button>
    </div>
</template>

<script>
import { Dialog } from 'vant';
export default {
    name: 'SetTop',
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
        },
        exit() {
            Dialog.confirm({
                title: '是否退出当前登录',
                message: '',
            })
                .then(() => {
                    // on confirm
                    sessionStorage.removeItem('logindatas');
                    this.$router.replace('/home')
                })
                .catch(() => {
                    // on cancel
                })
        }
    },
}
</script>

<style lang="less" scoped>
.SetTop>div:nth-of-type(1) {
    width: 37.5rem;
    height: 4.4rem;
    background-color: #ffffff;
    position: relative;
    border-bottom: 1px solid #d3d3d3;
}

.SetTop>div:nth-of-type(1) p:nth-of-type(1) {
    width: 22.5rem;
    height: 4.4rem;
    background-color: rgb(255, 255, 255);
    font-size: 1.5rem;
    line-height: 4.4rem;
    text-align: center;
    margin: 0px auto;
    color: #333;
}

.imgr {
    width: 2.2rem;
    height: 2.2rem;
    position: absolute;
    top: 1.1rem;
    left: 1rem;
}

.imggd {
    width: 2.2rem;
    height: 2.2rem;
    position: absolute;
    top: 1.1rem;
    right: 1.5rem;
}

.SetTop>div:nth-of-type(2) {
    width: 37.5rem;
    height: 7rem;
    position: relative;
    display: flex;
    background-color: rgb(255, 255, 255);
}

.informations div:nth-of-type(1),
.informations img:nth-of-type(1) {
    width: 4.5rem;
    height: 4.5rem;
    margin-left: .625rem;
}

.informations div:nth-of-type(1) {
    margin-top: 1.25rem;
}

.informations p {
    width: 27.9rem;
    height: 2.1rem;
    font-size: 1.4rem;
    color: #333;
    line-height: 2.1rem;
    margin-top: 2.45rem;
    margin-left: 1.2rem;
}

.informations div:nth-of-type(2),
.rjt {
    width: 1.6rem !important;
    height: 1.6rem !important;
}

.rjt {
    margin-top: 2.7rem;
    margin-left: .5rem;
}

.SetTop>div:nth-of-type(3),
.SetTop>div:nth-of-type(4) {
    width: 37.5rem;
    height: 13.5rem;
    background-color: #fff;
    margin-top: 1rem;
}

.SetTop>div:nth-of-type(3)>div,
.SetTop>div:nth-of-type(4)>div {
    width: 37.5rem;
    height: 4.5rem;
    // border-bottom: 1px solid #d3d3d3;
}

.SetTop>div:nth-of-type(3)>div>div,
.SetTop>div:nth-of-type(4)>div>div {
    width: 35rem;
    height: 4.5rem;
    // background-color: aqua;
    margin-left: 1.225rem;
    font-size: 1.4rem;
    color: #333;
    line-height: 4.5rem;
    display: flex;
    position: relative;
    border-bottom: 1px solid #d3d3d3;
}

.rjts {
    width: 1.6rem !important;
    height: 1.6rem !important;
    position: absolute;
    top: 1.45rem;
    right: -.1rem;
}

.sp {
    color: #999;
    margin-left: 13.5rem;
    font-size: 1.5rem;
}

.sps {
    color: #999;
    margin-left: 17.15rem;
    font-size: 1.5rem;
}

.spa,
.spas,
.spass {
    color: #999;
    font-size: 1.5rem;
}

.spa {
    margin-left: 14.1rem;
}

.spas {
    margin-left: 22.95rem;
}

.spass {
    margin-left: 17.2rem;
}

button {
    width: 34.5rem;
    height: 4rem;
    margin-left: 1.5rem;
    background-color: #FF6600;
    border: none;
    border-radius: .5rem;
    font-size: 1.5rem;
    color: #ffffff;
    margin-top: 3rem;
}

/deep/.van-overlay {
    background-color: #FF6600;
}
</style>