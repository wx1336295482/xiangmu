<template>
    <div class="ClassifyHot">
        <div>
            <p>热门推荐</p>
        </div>
        <div class="shopclassify">
            <div v-for="item in List">
                <!-- {{ item.img }} -->
                <img :src="item.img" alt="">
                <p>{{ item.msg }}</p>
            </div>
        </div>
        <div>
            <p>专场推荐</p>
        </div>
        <div class="shopclassifys">
            <div>
                <img src="../../assets/img/classifyhotzc1.png" alt="">
                <p>大聚惠</p>
            </div>
            <div>
                <img src="../../assets/img/classifyhotzc2.png" alt="">
                <p>百亿补贴</p>
            </div>
            <div>
                <img src="../../assets/img/classifyhotzc3.jpg" alt="">
                <p>9.9包邮</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'ClassifyHot',
    data() {
        return {
            List: [
                {
                    img: require('../../assets/img/classifyhot1.jpg'),
                    msg: '空调'
                },
                {
                    img: require('../../assets/img/classifyhot2.jpg'),
                    msg: '冰箱'
                },
                {
                    img: require('../../assets/img/classifyhot3.jpg'),
                    msg: '笔记本'
                },
                {
                    img: require('../../assets/img/classifyhot4.jpg'),
                    msg: '洗衣机'
                },
                {
                    img: require('../../assets/img/classifyhot5.jpg'),
                    msg: '电视'
                },
                {
                    img: require('../../assets/img/classifyhot6.jpg'),
                    msg: '平板电脑'
                },
                {
                    img: require('../../assets/img/classifyhot7.jpg'),
                    msg: '智能手表'
                },
                {
                    img: require('../../assets/img/classifyhot8.jpg'),
                    msg: '洗碗机'
                },
                {
                    img: require('../../assets/img/classifyhot9.jpg'),
                    msg: '电风扇'
                },
                {
                    img: require('../../assets/img/classifyhot10.jpg'),
                    msg: '净水器'
                },
                {
                    img: require('../../assets/img/classifyhot11.jpg'),
                    msg: '油烟机'
                },
                {
                    img: require('../../assets/img/classifyhot12.jpg'),
                    msg: '燃气灶'
                },
                {
                    img: require('../../assets/img/classifyhot13.jpg'),
                    msg: '热水器'
                },
                {
                    img: require('../../assets/img/classifyhot14.jpg'),
                    msg: '电饭煲'
                },
                {
                    img: require('../../assets/img/classifyhot15.jpg'),
                    msg: '冰洗套餐'
                },
                {
                    img: require('../../assets/img/classifyhot16.jpg'),
                    msg: '洗烘套餐'
                },
                {
                    img: require('../../assets/img/classifyhot17.jpg'),
                    msg: '厨电套餐'
                },
                {
                    img: require('../../assets/img/classifyhot18.png'),
                    msg: '奶粉'
                },
                {
                    img: require('../../assets/img/classifyhot19.jpg'),
                    msg: '白酒'
                },
                {
                    img: require('../../assets/img/classifyhot20.jpg'),
                    msg: '牛奶'
                },
                {
                    img: require('../../assets/img/classifyhot21.jpg'),
                    msg: '纸尿裤'
                },
                {
                    img: require('../../assets/img/classifyhot22.jpg'),
                    msg: '抽纸'
                },
                {
                    img: require('../../assets/img/classifyhot23.jpg'),
                    msg: '护肤套装'
                },
            ]
        }
    },
}
</script>


<style  scoped>
.ClassifyHot {
    width: 28.5rem;
    height: 47.7rem;
    overflow: auto;
}

.ClassifyHot>div:nth-of-type(1),
.ClassifyHot>div:nth-of-type(3) {
    width: 25.5rem;
    height: 4.2rem;
    margin: 0px auto;
    background-color: rgb(255, 255, 255);
    position: relative;
    font-weight: bold;
}

.ClassifyHot>div:nth-of-type(1)>p {
    width: 4.8rem;
    height: 1.2rem;
    font-size: 1.2rem;
    position: absolute;
    top: 1.5rem;
}

.shopclassify {
    width: 25.5rem;
    height: 76.8rem;
    background-color: rgb(255, 255, 255);
    margin: 0px auto;
    display: flex;
    flex-wrap: wrap;
}

.shopclassify>div,
.shopclassifys>div {
    width: 8.5rem;
    height: 9.6rem;
    background-color: rgb(255, 255, 255);
}

.shopclassify>div img,
.shopclassifys>div img {
    width: 6.3rem;
    height: 6.3rem;
    margin-left: 1.1rem;
}

.shopclassify>div p,
.shopclassifys>div p {
    width: 6.3rem;
    height: 1.8rem;
    font-size: 1.2rem;
    text-align: center;
    line-height: 1.8rem;
    color: #666;
    margin-left: 1.1rem;
}

.shopclassifys {
    width: 25.5rem;
    height: 9.6rem;
    margin: 0px auto;
    display: flex;
    flex-wrap: wrap;
}
</style>