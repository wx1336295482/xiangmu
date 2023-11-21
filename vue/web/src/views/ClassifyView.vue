<template>
    <div class="ClassifyView">
        <ClassifySearch></ClassifySearch>
        <ClassifySider></ClassifySider>
        <ClassifyNav></ClassifyNav>
    </div>
</template>

<script>
import ClassifySearch from '../components/classify/ClassifySearch.vue';
import ClassifySider from '../components/classify/ClassifySider.vue';
import ClassifyNav from '../components/public/ClassifyNav.vue';
export default {
    name: 'ClassifyView',
    components: {
        ClassifySearch,
        ClassifySider,
        ClassifyNav
    }
}
</script>

<style lang="less" scoped></style>