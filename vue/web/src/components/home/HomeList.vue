<template>
    <div class="HomeList">
        <img src="../../assets/img/home19.gif" alt="">
        <div class="list">
            <div>
                <img src="../../assets/img/home6.png" alt="">
                <p>苏宁家电</p>
            </div>
            <div>
                <img src="../../assets/img/home7.png" alt="">
                <p>苏宁超市</p>
            </div>
            <div>
                <img src="../../assets/img/home8.png" alt="">
                <p>手机电脑</p>
            </div>
            <div>
                <img src="../../assets/img/home9.png" alt="">
                <p>家具家装</p>
            </div>
            <div>
                <img src="../../assets/img/home10.png" alt="">
                <p>生活家电</p>
            </div>
            <div>
                <img src="../../assets/img/home11.png" alt="">
                <p>9.9包邮</p>
            </div>
            <div>
                <img src="../../assets/img/home12.png" alt="">
                <p>场景购</p>
            </div>
            <div>
                <img src="../../assets/img/home13.png" alt="">
                <p>签到有礼</p>
            </div>
            <div>
                <img src="../../assets/img/home14.png" alt="">
                <p>领券中心</p>
            </div>
            <div>
                <img src="../../assets/img/home15.png" alt="">
                <p>更多频道</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'HomeList'
}
</script>

<style scoped>
.HomeList {
    width: 37.5rem;
    height: 16rem;
    position: relative;
}

.HomeList>img {
    width: 37.5rem;
    height: 16rem;
    margin-top: -.1rem;
}

.HomeList>div {
    width: 37.5rem;
    height: 15.6rem;
    position: absolute;
    top: 0.12rem;
    display: flex;
    flex-wrap: wrap;
}

.list>div {
    width: 7.5rem;
    height: 7.8rem;
}

.list>div>img {
    width: 4.2rem;
    height: 4.2rem;
    margin-left: 1.65rem;
    margin-top: 1rem;
}

.list>div>p {
    width: 7.5rem;
    height: 1.4rem;
    font-size: 1.2rem;
    color: #666666;
    text-align: center;
}
</style>