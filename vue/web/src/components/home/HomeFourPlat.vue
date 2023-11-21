<template>
    <div class="HomeFourPlat">
        <div class="redp">
            <div>
                <img :src=this.imgs[0] alt="">
                <p>{{ this.msgs[0] }}</p>
            </div>
            <div>
                <img :src=this.imgs[1] alt="">
                <p>{{ this.msgs[1] }}</p>
            </div>
        </div>
        <div>
            <div>
                <img :src=this.imgs[2] alt="">
                <p>{{ this.msgs[2] }}</p>
            </div>
            <div>
                <img :src=this.imgs[3] alt="">
                <p>{{ this.msgs[3] }}</p>
            </div>
        </div>
        <div class="kb"></div>
        <div>
            <div>
                <img :src=this.imgs[4] alt="">
                <p>{{ this.msgs[4] }}</p>
            </div>
            <div>
                <img :src=this.imgs[5] alt="">
                <p>{{ this.msgs[5] }}</p>
            </div>
        </div>
        <div>
            <div>
                <img :src=this.imgs[6] alt="">
                <p>{{ this.msgs[6] }}</p>
            </div>
            <div>
                <img :src=this.imgs[7] alt="">
                <p>{{ this.msgs[7] }}</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'HomeFourPlat',
    data() {
        return {
            information: this.$store.state.datas,
            imgs: [],
            msgs: []
        }
    },
    mounted() {
        this.$store.dispatch('HomeImg')
        this.$store.commit('setdatas')
        this.imgdata()
    },
    computed: {

    },
    methods: {
        imgdata() {
            this.information.forEach(element => {
                this.imgs.push(element.img)
                this.msgs.push(element.message)
                // console.log(element.message);
            });
        }
    }
}
</script>

<style scoped>
.HomeFourPlat {
    width: 37.5rem;
    height: 22.2rem;
    background-color: #f7f7f7;
    display: flex;
    flex-wrap: wrap;
    margin-top: -0.1rem;
}

.HomeFourPlat>img {
    position: relative;
}

.HomeFourPlat>div {
    width: 17rem;
    height: 10.5rem;
    margin-left: 1.2rem;
    display: flex;
}

.HomeFourPlat>div>div {
    width: 8.5rem;
    height: 10.5rem;
    position: relative;
    display: flex;
    justify-content: center;
}

.HomeFourPlat>div>div>img {
    width: 7.7rem;
    height: 7.7rem;
    margin-left: .4rem;
    margin-top: 2.5rem;
}

.HomeFourPlat>div:nth-of-type(1) {
    background-image: url("../../assets/img/home20.png");
    background-size: 17rem 10.5rem;
}

.HomeFourPlat>div:nth-of-type(2) {
    margin-left: 1.1rem;
    background-image: url("../../assets/img/home21.png");
    background-size: 17rem 10.5rem;
}

.HomeFourPlat>div:nth-of-type(4) {
    display: flex;
}

.HomeFourPlat>div:nth-of-type(4)>div:nth-of-type(1) {
    width: 8.5rem;
    height: 10.5rem;
    background-image: url("../../assets/img/home22.png");
    background-size: 8.5rem 10.5rem;
}

.HomeFourPlat>div:nth-of-type(4)>div:nth-of-type(2) {
    width: 8.5rem;
    height: 10.5rem;
    background-image: url("../../assets/img/home23.png");
    background-size: 8.5rem 10.5rem;
}

.HomeFourPlat>div:nth-of-type(5) {
    margin-left: 1.1rem;
    background-image: url("../../assets/img/home24.png");
    background-size: 17rem 10.5rem;
}



.kb {
    width: 37.5rem !important;
    height: 1.2rem !important;
    background-color: #f7f7f7 !important;
    margin-left: 0rem !important;
}

.PlatImg {
    width: 17rem;
    height: 10.5rem;
}

.HomeFourPlat>div:nth-of-type(4)>img {
    width: 8.8rem;
    height: 10.5rem;
}

.HomeFourPlat>div:nth-of-type(4)>img:nth-of-type(2) {
    margin-left: -0.1rem;
}

p {
    height: 1.4rem;
    font-size: 1.2rem;
    color: #B95A17;
    background-color: #FFF6ED;
    padding: 0rem .5rem;
    margin-left: 0.5rem;
    border-radius: .7rem;
    position: absolute;
    bottom: 0.5rem;
}

.redp p {
    color: #FF0000 !important;
    background-color: #FFEBEB !important;
}
</style>