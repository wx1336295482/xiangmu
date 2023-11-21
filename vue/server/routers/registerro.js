//创建路由
const express = require('express');
const router = express.Router();
//导入加密模块
const token = require('../middleware/token');
const logintoken = require('../middleware/logintoken');
const upsettoken = require('../middleware/upsettoken')
// const delettoken = require('../middleware/delettoken')
//导入控件
const Registerco = require('../controlers/registercro');
const Logincro = require('../controlers/logincro')
const Upsetcro = require('../controlers/upsetcro')
const Deletcro = require('../controlers/deletcro')
const Listcro = require('../controlers/listcro')
const Searchcro = require('../controlers/searchcro')
const Commoncro = require('../controlers/commoncro')
const Commondata = require('../controlers/commondata')
const HomeImg = require('../controlers/homeImgcro')
const Banner = require('../controlers/bannercro')
const ShoppingList = require('../controlers/shoppinglistcro')
const Details = require('../controlers/detailscro')
const Shopcarcro = require('../controlers/shopcarcro')
const Shopcardatascro = require('../controlers/shopcardatascro')

//整合路由
//注册
router.post('/register', token, Registerco.registerco);
//登录
router.post('/login', logintoken, Logincro.logincro)
//修改密码
router.post('/upset', upsettoken, Upsetcro.upsetcro)
//列表
router.get('/list', Listcro.listcro)
//搜索
router.post('/search', Searchcro.searchcro)
//评论
router.post('/common', Commoncro.commoncro)
//获取评论数据
router.get('/commondata', Commondata.commondata)
//获取home数据
router.get('/homeimg', HomeImg.homeimg)
//home的banner
router.get('/banner', Banner.banner)
//获取商品列表
router.get('/shoppinglist', ShoppingList.shoppinglist)
//获取商品详情
router.get('/details', Details.details)
//添加商品
router.post('/shopcar', Shopcarcro.shopcarcro)
//添加商品数据
router.get('/shopcardatas', Shopcardatascro.shopcardatascro)
//删除购物车数据
router.post('/delet', Deletcro.deletcro)
module.exports = router;
