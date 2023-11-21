<template>
  <div class="MyView">
    <MyTop></MyTop>
    <Order></Order>
    <Tools></Tools>
    <MyList></MyList>
    <MyNav></MyNav>
  </div>
</template>

<script>
import MyTop from '../components/myperson/MyTop.vue';
import Order from '../components/myperson/Order.vue';
import Tools from '../components/myperson/Tools.vue';
import MyList from '../components/myperson/MyList.vue';
import MyNav from '../components/public/MyNav.vue';
export default {
  name: 'MyView',
  components: {
    MyTop,
    Order,
    Tools,
    MyList,
    MyNav
  }
}
</script>

<style lang="less" scoped>
.MyView {
  background-color: #f2f2f2;
}
</style>