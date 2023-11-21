<template>
    <div class="Tools">
        <div>
            <p>必备工具</p>
        </div>
        <div class="goshop">
            <div>
                <img src="../../assets/img/g1.png" alt="">
                <p>红包</p>
            </div>
            <div class="sh">
                <img src="../../assets/img/g2.png" alt="" class="sh">
                <p>店铺关注</p>
            </div>
            <div>
                <img src="../../assets/img/g3.png" alt="">
                <p>我的预约</p>
            </div>
            <div>
                <img src="../../assets/img/g4.png" alt="">
                <p>客户服务</p>
            </div>
            <div>
                <img src="../../assets/img/g5.png" alt="">
                <p>必抢清单</p>
            </div>
            <div class="sh">
                <img src="../../assets/img/g6.png" alt="" class="sh">
                <p>拼购</p>
            </div>
            <div>
                <img src="../../assets/img/g7.png" alt="">
                <p>校园VIP</p>
            </div>
            <div>
                <img src="../../assets/img/g8.png" alt="">
                <p>我的试用</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Tools'
}
</script>

<style lang="less" scoped>
.Tools {
    width: 35.1rem;
    height: 18.8rem;
    background-color: #fff;
    border-radius: .5rem;
    margin-left: 1.2rem;
    margin-top: 1rem;
    position: relative;
}

.Tools>div:nth-of-type(1) {
    width: 33rem;
    height: 1.7rem;
    // background-color: aqua;
    margin-top: 1.2rem;
    position: absolute;
    left: 1.1rem;
}

.Tools>div:nth-of-type(1) p {
    height: 1.7rem;
    line-height: 1.7rem;
}

.Tools>div:nth-of-type(1) p:nth-of-type(1) {
    width: 6rem;
    font-size: 1.5rem;
    color: #222;
    font-weight: bold;
}

.goshop {
    width: 33rem;
    height: 8.8rem;
    // background-color: rgb(100, 255, 154);
    position: absolute;
    top: 3rem;
    left: 1.1rem;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.goshop div {
    width: 8.25rem;
    height: 7.1rem;
    // background-color: aquamarine;
}

.goshop img {
    width: 2.5rem;
    margin-left: 2.8rem;
    margin-top: 2rem;
}

.goshop p {
    text-align: center;
    font-size: 1.2rem;
    margin-top: .5rem;
    color: #222;
}
</style>