<template>
    <div class="LoginTip" v-show="!this.logins">
        <router-link to="/login">
            <img src="../../assets/img/logintip.png" alt="">
        </router-link>
    </div>
</template>

<script>
export default {
    name: 'LoginTip',
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

<style  scoped>
.LoginTip img {
    width: 37.5rem;
    height: 4.5rem;
    position: fixed;
    bottom: 5rem;
}
</style>