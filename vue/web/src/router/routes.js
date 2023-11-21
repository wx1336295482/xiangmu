import HomeView from '../views/HomeView.vue'
import classifyView from '../views/ClassifyView.vue'
import LoginView from '../views/LoginView.vue'
import RegisterView from '../views/RegisterView.vue'
import ShoppingCarView from '../views/ShoppingCarView.vue'
import SearchView from '../views/SearchView.vue'
import MyView from '../views/MyView.vue'
import AccoutSetView from '../views/AccoutSetView.vue'
import UpdataView from '../views/UpdataView.vue'
import ShoppingDetails from '../views/ShoppingDetails.vue'
const routes = [
    {
        path: '/',
        redirect: '/home'
    },
    //首页
    {
        path: '/home',
        name: 'home',
        component: HomeView,
    },
    //分类
    {
        path: '/classify',
        name: 'classify',
        component: classifyView,
    },
    //登录
    {
        path: '/login',
        name: 'login',
        component: LoginView,
    },
    //注册
    {
        path: '/register',
        name: 'register',
        component: RegisterView,
    },
    //搜索
    {
        path: '/Search',
        name: 'Search',
        component: SearchView,
        children: [
            {
                path: 'record',
                name: 'record',
                component: () => import('../components/search/Search.vue'),
            },
            {
                path: 'Searched',
                name: 'Searched',
                component: () => import('../components/search/Searched.vue'),
            }
        ]
    },
    //购物车
    {
        path: '/shopping',
        name: 'shopping',
        component: ShoppingCarView,
        children: [
            {
                path: 'beforelogin',
                name: 'beforelogin',
                component: () => import('../components/shopping/BeforeLogin.vue'),
            },
            {
                path: 'logined',
                name: 'logined',
                component: () => import('../components/shopping/Logined.vue'),
            }
        ]
    },
    //个人中心
    {
        path: '/my',
        name: 'my',
        component: MyView,
    },
    //账户设置
    {
        path: '/accountset',
        component: AccoutSetView
    },
    //修改密码
    {
        path: '/upset',
        component: UpdataView
    },
    //商品详情
    {
        path: '/ShoppingDetails',
        component: ShoppingDetails,
        children: [
            {
                path: 'glkfrB',
                component: () => import('../components/details/glkfrB.vue'),
            },
            {
                path: 'glkfrs',
                component: () => import('../components/details/glkfrs.vue')
            },
            {
                path: 'lvc',
                component: () => import('../components/details/lvc.vue')
            },
            {
                path: 'mdkfrA',
                component: () => import('../components/details/mdkfrA.vue')
            },
        ]
    },
]


export default routes