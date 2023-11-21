<template>
    <div class="ShoppingDetails">
        <router-view></router-view>
    </div>
</template>

<script>
export default {
    name: 'ShoppingDetails',
}
</script>

<style lang="less" scoped>
.ShoppingDetails {
    width: 37.5rem;
    background-color: #f2f2f2 !important;
}
</style>