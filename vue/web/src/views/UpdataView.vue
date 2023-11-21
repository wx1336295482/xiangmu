
<template>
    <div class="UpdataView">
        <p>联系客服</p>
        <span class="spa">
            <img src="../assets/img/login.png" alt="">
            <span>欢迎使用苏宁易购</span>
        </span>
        <div>
            <input type="text" v-model="username" @blur="useblurs" placeholder="请输入用户名" id="username">
            <span ref="s" id="s"></span>
        </div>
        <div>
            <!-- 实现密码的隐藏和替换 -->
            <input :type="showPassword ? 'text' : 'password'" v-model="psw" @blur="pswblur" placeholder="请输入密码" id="psw">
            <button @click="togglePasswordVisibility" id="showbtn">
                <img :src="require('../assets/img/loginunshow.png')" alt="" v-show="userShow">
                <img :src="require('../assets/img/loginshow.png')" alt="" v-show="!userShow">
            </button><br>
            <span ref="sp" id="sp"></span>
        </div>
        <div class="newpsw">
            <!-- 实现密码的隐藏和替换 -->
            <input :type="showPassword ? 'text' : 'password'" v-model="pwds" @blur="pwdsblur" placeholder="请再次输入密码"
                id="pwds">
            <button @click="togglePasswordVisibility" id="showbtn">
                <img :src="require('../assets/img/loginunshow.png')" alt="" v-show="userShow">
                <img :src="require('../assets/img/loginshow.png')" alt="" v-show="!userShow">
            </button><br>
            <span ref="spa" id="spa"></span>
        </div>
        <button @click="logins" id="unbtn">修改密码</button>
        <div class="other" v-show="false">
            <div>
                <span></span>
                <p>其他登录方式</p>
                <span></span>
            </div>
            <div>
                <img src="../assets/img/login1.png" alt="">
                <img src="../assets/img/login2.png" alt="">
            </div>
            <p>我同意
                <a href="#">
                    <span>《苏宁易购会员章程》</span>
                </a>
                <a href="#">
                    <span>
                        《易付宝协议》
                    </span>
                </a>
            </p>
        </div>
    </div>
</template>

<script>
export default {
    name: 'UpdataView',
    mounted() {
        this.$store.commit('setupsetdatas')
    },
    data() {
        return {
            userShow: true,
            username: '',
            psw: '',
            pwds: '',
            s: '',
            sp: '',
            i: false,
            j: false,
            k: false,
            showPassword: false,
        }
    },
    methods: {
        togglePasswordVisibility() {
            this.showPassword = !this.showPassword;
            this.userShow = !this.userShow;
        },
        useblurs() {
            if (this.username == '') {
                this.$refs.s.innerText = '*用户名为空，请输入';
                this.$refs.s.className = 'false';
                this.i = false;
            } else {
                this.$refs.s.innerText = '*用户名正确';
                this.$refs.s.className = 'true';
                this.i = true;
            }
        },
        pswblur() {
            if (this.psw == '') {
                this.$refs.sp.innerText = '*密码为空，请输入'
                this.$refs.sp.className = 'false'
                this.j = false
            } else {
                if (this.psw.length < 6) {
                    this.$refs.sp.innerText = '*密码长度少于6'
                    this.$refs.sp.className = 'false'
                    this.j = false
                }
                else {
                    this.$refs.sp.innerText = '*密码格式正确'
                    this.$refs.sp.className = 'true'
                    this.j = true
                }
            }
        },
        pwdsblur() {
            if (this.pwds == '') {
                this.$refs.spa.innerText = '*密码为空，请输入'
                this.$refs.spa.className = 'false'
                this.k = false
            } else {
                if (this.pwds.length < 6) {
                    this.$refs.spa.innerText = '*密码长度少于6'
                    this.$refs.spa.className = 'false'
                    this.k = false
                }
                else {
                    this.$refs.spa.innerText = '*密码格式正确'
                    this.$refs.spa.className = 'true'
                    this.k = true
                }
            }
        },
        logins() {
            if (this.i === true && this.j === true && this.k === true) {
                let params = {
                    username: this.username,
                    psw: this.psw,
                    pwds: this.pwds
                }
                this.$store.dispatch('upset', params)
            }
        }
    },
}
</script>

<style lang="less" scoped>
.UpdataView {
    width: 37.5rem;
    height: 57.7rem;
    background-color: #fff !important;
    position: relative;
}

.newpsw {
    margin-top: 2rem;
}

.UpdataView>p:nth-of-type(1) {
    width: 4.8rem;
    height: 3rem;
    line-height: 3rem;
    font-size: 1.2rem;
    color: #222;
    margin-top: 0.65rem;
    margin-left: 31.5rem;
}

.spa {
    display: inline-block;
    width: 30rem;
    height: 4.5rem;
    margin-left: 3.75rem;
    margin-top: 3rem;
    position: relative;
}

.spa>img {
    width: 4.5rem;
    height: 4.5rem;
}

.spa>span {
    font-size: 1.8rem;
    line-height: 4.5rem;
    color: #222;
    position: absolute;
    left: 6rem;
}

.UpdataView>div {
    width: 30rem;
    height: 4.5rem;
    margin-left: 3.75rem;
    // overflow: hidden;
    position: relative;
}

.UpdataView>div:nth-of-type(1) {
    margin-top: 3rem;
}

.UpdataView>div:nth-of-type(2) {
    margin-top: 1.8rem;
    position: relative;
}

.UpdataView>div>input {
    width: 29rem;
    height: 100%;
    border: none;
    font-size: 1.4rem;
    color: #8d8d8d;
    border-bottom: 1px solid #bbbbbb;
    // overflow: hidden;
    padding-left: 1rem;
}

.UpdataView>div>input:focus {
    outline: none;
    border: 1px solid #bbbbbb;
    border-top: none;
    border-left: none;
    border-right: none;
}

.UpdataView>div>span {
    font-size: 1.1rem;
    display: block;
    margin-top: 0.5%;
}

.UpdataView>div>input::placeholder {
    color: #8d8d8d;
}

#unbtn {
    width: 30rem;
    height: 4.5rem;
    margin-left: 3.75rem;
    border: none;
    border-radius: 1rem;
    font-size: 1.6rem;
    color: #222;
    font-weight: bold;
    margin-top: 3rem;
    background-color: #ffcc00;
}

#showbtn {
    width: 2.1rem;
    height: 2.1rem;
    position: absolute;
    top: 1.2rem;
    right: 0rem;
    border: none;
    background-color: #fff;
}

#showbtn>img {
    width: 2.1rem;
    height: 2.1rem;
}

.resiger {
    width: 37.5rem;
    font-size: 1.5rem;
    text-align: center;
    color: #333;
    margin-left: -0rem;
    margin-top: 1.5rem;
}

.UpdataView>div:nth-last-of-type(1) {
    width: 24rem;
    height: 9.6rem;
    background-color: #bbbbbb;
    margin-left: 6.75rem;
    margin-top: 10rem;
}

.other {
    background-color: #fff !important;
}

.other>div:nth-of-type(1) {
    width: 24rem;
    height: 2rem;
    margin-top: -0.65rem;
    position: relative;
}

.other>div:nth-of-type(1)>P {
    font-size: 1.2rem !important;
    line-height: 2.7rem;
    text-align: center;
    color: #999999;
}

.other>div:nth-of-type(1)>span {
    display: inline-block;
    width: 7.5rem;
    height: .1rem;
    background-color: #dddddd;
    position: absolute;
    top: 1.3rem;
    border-radius: 1rem;
}

.other>div:nth-of-type(1)>span:nth-of-type(2) {
    right: 0rem;
}

.other>div:nth-of-type(2) {
    width: 24rem;
    height: 3.3rem;
    display: flex;
    justify-content: space-around;
}

.other>div:nth-of-type(2)>img {
    width: 3.3rem;
    height: 3.3rem;
    margin-top: .5rem;
}

.other p {
    font-size: 1.2rem;
    color: #999999;
    margin-top: 1.7rem;
}

.other>p span:nth-of-type(1) {
    margin-left: -0.4rem;
}

a {
    color: #101010;
}

.true {
    color: #22ff00;
}

.false {
    color: #ff0000;
}
</style>
