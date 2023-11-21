<template>
    <div class="ClassifyIphone">
        <van-tabs v-model="active" scrollspy sticky>
            <van-tab v-for="index in list" :title="index.title" :key="index.id">
                <p class="text">{{ index.title }}</p>
                <div class="shops">
                    <div v-for="item in index.imgs">
                        <img :src="item.img" alt="">
                        <p>{{ item.name }}</p>
                    </div>
                    <button v-show="index.id == 7" class="take">
                        进入手机频道
                    </button>
                </div>
            </van-tab>
        </van-tabs>
    </div>
</template>

<script>
export default {
    name: 'ClassifyIphone',
    data() {
        return {
            active: 2,
            list: [
                {
                    id: 1,
                    title: '精选推荐',
                    imgs: [
                        {
                            img: require('../../assets/img/iPhone1.jpg'),
                            name: '折叠屏手机'
                        },
                        {
                            img: require('../../assets/img/iphone2.jpg'),
                            name: '5G手机'
                        },
                        {
                            img: require('../../assets/img/iphone3.jpg'),
                            name: '游戏手机'
                        },
                        {
                            img: require('../../assets/img/iphone4.jpg'),
                            name: '拍照手机'
                        },
                        {
                            img: require('../../assets/img/iphone5.jpg'),
                            name: '长续航手机'
                        },
                        {
                            img: require('../../assets/img/iphone6.jpg'),
                            name: '功能机'
                        },
                        {
                            img: require('../../assets/img/iphone7.jpg'),
                            name: '骁龙手机'
                        },
                        {
                            img: require('../../assets/img/iphone8.jpg'),
                            name: '手机'
                        },
                    ]
                },
                {
                    id: 2,
                    title: '热销大牌',
                    imgs: [
                        {
                            img: require('../../assets/img/iphone9.jpg'),
                            name: 'APPLE'
                        },
                        {
                            img: require('../../assets/img/iphone10.jpg'),
                            name: '小米'
                        },
                        {
                            img: require('../../assets/img/iphone11.jpg'),
                            name: '华为'
                        },
                        {
                            img: require('../../assets/img/iphone12.jpg'),
                            name: 'VIVO'
                        },
                        {
                            img: require('../../assets/img/iphone13.jpg'),
                            name: 'OPPO'
                        },
                        {
                            img: require('../../assets/img/iphone14.jpg'),
                            name: 'iQOO'
                        },
                        {
                            img: require('../../assets/img/iphone15.jpg'),
                            name: '荣耀'
                        },
                        {
                            img: require('../../assets/img/iphone16.jpg'),
                            name: '三星'
                        },
                        {
                            img: require('../../assets/img/iphone17.jpg'),
                            name: '一加'
                        },
                        {
                            img: require('../../assets/img/iphone18.jpg'),
                            name: '真我'
                        },
                        {
                            img: require('../../assets/img/iphone19.jpg'),
                            name: '摩托罗拉'
                        },
                    ]
                },
                {
                    id: 3,
                    title: '精选榜单',
                    imgs: [
                        {
                            img: require('../../assets/img/iphonemedal1.jpg'),
                            name: ''
                        },
                        {
                            img: require('../../assets/img/iphonemedal2.jpg'),
                            name: ''
                        },
                        {
                            img: require('../../assets/img/iphonemedal3.jpg'),
                            name: ''
                        },
                    ]

                },
                {
                    id: 4,
                    title: '手机配件',
                    imgs: [
                        {
                            img: require('../../assets/img/iphoneparts1.jpg'),
                            name: '手机壳'
                        },
                        {
                            img: require('../../assets/img/iphoneparts2.jpg'),
                            name: '手机膜'
                        },
                        {
                            img: require('../../assets/img/iphoneparts3.jpg'),
                            name: '数据线'
                        },
                        {
                            img: require('../../assets/img/iphoneparts4.jpg'),
                            name: '无线充'
                        },
                        {
                            img: require('../../assets/img/iphoneparts5.jpg'),
                            name: '充电器'
                        },
                        {
                            img: require('../../assets/img/iphoneparts6.jpg'),
                            name: '手机支架'
                        },
                        {
                            img: require('../../assets/img/iphoneparts7.jpg'),
                            name: '充电宝'
                        },
                        {
                            img: require('../../assets/img/iphoneparts8.jpg'),
                            name: '手机U盘'
                        },
                        {
                            img: require('../../assets/img/iphoneparts9.jpg'),
                            name: '内存卡'
                        },
                        {
                            img: require('../../assets/img/iphoneparts10.jpg'),
                            name: '苹果套餐'
                        },
                        {
                            img: require('../../assets/img/iphoneparts11.jpg'),
                            name: '华为套餐'
                        },
                        {
                            img: require('../../assets/img/iphoneparts12.jpg'),
                            name: '拍照神器'
                        },
                    ]

                },
                {
                    id: 5,
                    title: '周边',
                    imgs: [
                        {
                            img: require('../../assets/img/iphonearound1.jpg'),
                            name: '智能手表'
                        },
                        {
                            img: require('../../assets/img/iphonearound2.jpg'),
                            name: '运动手环'
                        },
                        {
                            img: require('../../assets/img/iphonearound3.jpg'),
                            name: '电话手表'
                        },
                        {
                            img: require('../../assets/img/iphonearound4.jpg'),
                            name: '智能音箱'
                        },
                        {
                            img: require('../../assets/img/iphonearound5.jpg'),
                            name: '蓝牙音箱'
                        },
                        {
                            img: require('../../assets/img/iphonearound6.jpg'),
                            name: '户外音箱'
                        },
                        {
                            img: require('../../assets/img/iphonearound7.jpg'),
                            name: '高音质音箱'
                        },
                        {
                            img: require('../../assets/img/iphonearound8.jpg'),
                            name: '手机电池'
                        },
                        {
                            img: require('../../assets/img/iphonearound9.jpg'),
                            name: '车载充电器'
                        },
                        {
                            img: require('../../assets/img/iphonearound10.jpg'),
                            name: '防水手机套'
                        },
                        {
                            img: require('../../assets/img/iphonearound11.jpg'),
                            name: '手机挂绳'
                        },
                        {
                            img: require('../../assets/img/iphonearound12.jpg'),
                            name: '蓝牙耳机'
                        },
                        {
                            img: require('../../assets/img/iphonearound13.jpg'),
                            name: '头戴式耳机'
                        },
                        {
                            img: require('../../assets/img/iphonearound14.jpg'),
                            name: '降噪耳机'
                        },
                        {
                            img: require('../../assets/img/iphonearound15.jpg'),
                            name: '骨传导耳机'
                        },
                    ]
                },
                {
                    id: 6,
                    title: '运营商',
                    imgs: [
                        {
                            img: require('../../assets/img/iphoneoperator1.jpg'),
                            name: '运营商网厅'
                        },
                        {
                            img: require('../../assets/img/iphoneoperator2.jpg'),
                            name: '手机卡'
                        },
                        {
                            img: require('../../assets/img/iphoneoperator3.jpg'),
                            name: '宽带'
                        },
                        {
                            img: require('../../assets/img/iphoneoperator4.jpg'),
                            name: '苏宁互联'
                        },
                        {
                            img: require('../../assets/img/iphoneoperator5.jpg'),
                            name: '视听娱乐'
                        },
                    ]
                },
                {
                    id: 7,
                    title: '手机服务',
                    imgs: [
                        {
                            img: require('../../assets/img/iphoneserve1.jpg'),
                            name: '换电池'
                        },
                        {
                            img: require('../../assets/img/iphoneserve2.jpg'),
                            name: '换屏'
                        },
                        {
                            img: require('../../assets/img/iphoneserve3.jpg'),
                            name: '扩内存'
                        },
                        {
                            img: require('../../assets/img/iphoneserve4.jpg'),
                            name: '以旧换新'
                        }
                    ]
                },
            ],
        };
    },
}
</script>

<style lang="less" scoped>
/deep/.van-tabs__content {
    width: 28.5rem;
    height: 47.7rem;
}

/deep/.van-tabs__wrap,
/deep/.van-tabs__wrap--scrollable {
    width: 28.5rem;
    height: 3.8rem;
}

/deep/.van-tab {
    width: 7.125rem;
    height: 3.8rem;
    font-size: 1.2rem;
    color: #666;
    margin: 0rem;
}

/deep/.van-tab__text {
    width: 7.125rem;
    margin-left: -.1rem;
    text-align: center;
}

.van-tab__pane {
    padding-top: 5rem;
    // background-color: aqua;
}

.ClassifyIphone {
    overflow: auto;
}

/deep/.van-tabs__wrap {
    position: fixed;
    top: 5.3rem;
    left: 9rem;
}

/deep/.van-tab--active {
    font-weight: bold;
    color: #222;
}

/deep/.van-tabs__line {
    background-color: #ffcc00;
    width: 1.1rem;
    height: .3rem;
    // margin-left: -.2rem;
}

.text {
    width: 25.5rem;
    height: 4.2rem;
    // background-color: aqua;
    font-size: 1.2rem;
    font-weight: bold;
    line-height: 4.2rem;
    margin-left: 1.7rem;
}

.shops {
    width: 28.5rem;
    display: flex;
    flex-wrap: wrap;
}

.shops>div {
    width: 9.5rem;
    height: 9.5rem;
    // background-color: #ffcc00;
}

.van-tab__pane:nth-of-type(3) {
    // background-color: #666;
    height: 12rem;
}

.van-tab__pane:nth-of-type(7) {
    // background-color: #666;
    position: relative;
    height: 35rem;
}

.shops img {
    width: 6.4rem;
    height: 6.4rem;
    margin-left: 1.7rem;
}

.shops p {
    width: 6.4rem;
    font-size: 1.2rem;
    color: #666;
    text-align: center;
    margin-left: 1.7rem;
}

.take {
    width: 25.5rem;
    height: 3.3rem;
    position: absolute;
    font-size: 1.4rem;
    color: #222;
    border: 1px solid #dddddd;
    background-color: #fff;
    border-radius: 0.5rem;
    margin-left: 1.5rem;
    margin-top: 20rem;
}
</style>