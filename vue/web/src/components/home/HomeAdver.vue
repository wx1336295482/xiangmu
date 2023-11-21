<template>
    <div class="HomeAder">
        <img src="../../assets/img/home16.gif" alt="">
        <img src="../../assets/img/home17.gif" alt="">
        <img src="../../assets/img/home18.gif" alt="">
        <div></div>
    </div>
</template>

<script>
// import { mapMutations, mapActions } from 'vuex';

export default {
    name: 'HomeAder',
}
</script>

<style scoped>
.HomeAder {
    width: 37.5rem;
    height: 10.8rem;
    margin-top: -0.2rem;
    display: flex;
    flex-wrap: wrap;
    background-color: #f6deb7 !important;
}

.HomeAder>img {
    width: 12.5rem;
    height: 9.6rem;
}

.HomeAder>div {
    width: 37.5rem;
    height: 1.2rem;
    background-color: #f7f7f7;
}
</style>