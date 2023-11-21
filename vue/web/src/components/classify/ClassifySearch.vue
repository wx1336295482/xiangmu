<template>
    <div class="Classify">
        <div>商品分类</div>
        <div>
            <router-link to="/search/record">
                <div>
                    <img src="../../assets/img/search.png" alt="">
                    <span>搜索商品或店铺</span>
                </div>
            </router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Classify'
}
</script>

<style lang="less" scoped>
.Classify {
    width: 37.5rem;
    height: 5.4rem;
    background-color: #fff;
    display: flex;
    position: fixed;
    top: 0rem;
    left: 0rem;
}

.Classify>div:nth-of-type(1) {
    width: 9rem;
    height: 5.4rem;
    // background-color: blanchedalmond;
    font-size: 1.8rem;
    color: #333333;
    line-height: 5.4rem;
    text-align: center;
}

.Classify>div:nth-of-type(2) {
    width: 28.5rem;
    height: 5.4rem;
    // background-color: rgb(255, 153, 0);
}

.Classify>div:nth-of-type(2) div {
    width: 26rem;
    height: 3.2rem;
    border-radius: 1.6rem;
    background-color: #f7f7f7;
    margin: 0px auto;
    margin-top: 1.1rem;
    position: relative;
}

.Classify>div:nth-of-type(2) span {
    // display: inline-block;
    font-size: 1.4rem;
    color: #999;
    line-height: 3.2rem;
    position: absolute;
    left: 3.2rem;
    top: 0.07rem;
}

.Classify>div:nth-of-type(2) img {
    width: 2rem;
    height: 2rem;
    margin-top: 0.6rem;
    margin-left: 0.6rem;
}
</style>