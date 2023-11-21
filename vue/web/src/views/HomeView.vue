<template>
  <div class="home">
    <HomeTop></HomeTop>
    <HomeList></HomeList>
    <HomeAdver></HomeAdver>
    <HomeFourPlat></HomeFourPlat>
    <HomeBanner></HomeBanner>
    <HomeShopping></HomeShopping>
    <HomeNav></HomeNav>
    <ReturnTop></ReturnTop>
    <LoginTipTop></LoginTipTop>
    <van-popup v-model="show" closeable close-icon="close" close-icon-position="top-right" :style="{ height: '100%' }">
      <img src="../assets/img/turnoff.png" alt="" class="turnoff">
      <img src="../assets/img/hb.png" alt="" class="redbag">
    </van-popup>
    <!-- 图标位置 -->
  </div>
</template>

<script>
// @ is an alias to /src
import HomeTop from '../components/home/HomeTop.vue';
import HomeList from '../components/home/HomeList.vue';
import HomeAdver from '../components/home/HomeAdver.vue';
import HomeFourPlat from '../components/home/HomeFourPlat.vue';
import HomeBanner from '../components/home/HomeBanner.vue';
import HomeShopping from '../components/home/HomeShopping.vue';
import HomeNav from '../components/public/HomeNav.vue';
import ReturnTop from '../components/public/ReturnTop.vue';
import LoginTipTop from '../components/home/LoginTip.vue';
export default {
  name: 'HomeView',
  components: {
    HomeTop,
    HomeList,
    HomeAdver,
    HomeFourPlat,
    HomeBanner,
    HomeShopping,
    HomeNav,
    ReturnTop,
    LoginTipTop
  },
  mounted() {
    this.showPopup()
  },
  data() {
    return {
      show: false,
    };
  },

  methods: {
    showPopup() {
      this.show = true;
    },
  },
};
</script>
<style lang="less" scoped>
.home {
  width: 37.5rem;
  height: 66.7rem;
  background-color: aquamarine;
}

.redbag {
  width: 33.4rem;
  height: 36.7rem;
  margin-top: 11rem;
}

/deep/.van-icon {
  width: 2.4rem;
  height: 2.4rem;
  // background-color: aqua;
  margin-top: 8rem;
}

.turnoff {
  width: 2.4rem;
  height: 2.4rem;
  margin-left: 10rem;
  position: fixed;
  top: 9rem;
  left: 20rem;
}

/deep/.van-icon-close:before {
  content: '';
}

/deep/.van-popup {
  background: none;
}
</style>
