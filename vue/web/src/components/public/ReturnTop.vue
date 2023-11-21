<template>
    <div class="ReturnTop" @click="returnT" v-show="this.scrollDistance">
        <img src="../../assets/img/returntop.png" alt="">
    </div>
</template>

<script>
export default {
    name: 'ReturnTop',
    data() {
        return {
            scrollDistance: false
        }
    },
    mounted() {
        window.addEventListener('scroll', this.handtop)
    },
    beforeDestroy() {
        window.removeEventListener('scroll', this.handtop)
    },
    methods: {
        handtop() {
            if (document.documentElement.scrollTop > 800) {
                return this.scrollDistance = true
            }
            else {
                return this.scrollDistance = false
            }
        }
        ,
        returnT() {
            document.documentElement.scrollTop = 0
        }
    }
}
</script>

<style lang="less" scoped>
.ReturnTop {
    width: 4rem;
    height: 4rem;
    background-color: #ffffff;
    position: fixed;
    bottom: 10rem;
    right: 1.1rem;
    border-radius: 2.5rem;
    box-shadow: 0rem .5rem .8rem rgba(0, 0, 0, 0.2);
}

.ReturnTop>img {
    width: 3.5rem;
    height: 3rem;
    margin-top: 0.5rem;
    margin-left: 0.25rem;
}
</style>