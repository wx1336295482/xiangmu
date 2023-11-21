import AccountReq from '../../api/accountReq';
import router from '../router/index'
const actions = {
    async HomeImg({ commit }) {
        try {
            const homedata = await AccountReq.HomeImgReq()
            if (homedata.data.code == 200) {
                sessionStorage.setItem('datas', JSON.stringify(homedata.data.data)) // 本地存储一份
                commit('setdatas', homedata.data.data)
            }
        } catch (error) {
            console.log(error);
        }
    },
    async BannerImg({ commit }) {
        try {
            const bannerdata = await AccountReq.BannerReq()
            if (bannerdata.data.code == 200) {
                sessionStorage.setItem('bannerdatas', JSON.stringify(bannerdata.data.data)) // 本地存储一份
                commit('setbannerdatas', bannerdata.data.data)
            }
        } catch (error) {
            console.log(error);
        }
    },
    //商品列表
    async shoppinglist({ commit }) {
        try {
            const shoppinglists = await AccountReq.ShoppingListReq()
            if (shoppinglists.data.code == 200) {
                sessionStorage.setItem('shoppinglistdatas', JSON.stringify(shoppinglists.data.data)) // 本地存储一份
                commit('setshoppinglistdatas', shoppinglists.data.data)
            }
        } catch (error) {
            console.log(error);
        }
    },
    //商品详情
    async detailses({ commit }) {
        try {
            const details = await AccountReq.DetailsReq()
            if (details.data.code == 200) {
                sessionStorage.setItem('detailsdatas', JSON.stringify(details.data.data)) // 本地存储一份
                commit('setdetailsdatas', details.data.data)
            }
        } catch (error) {
            console.log(error);
        }
    },
    //登录
    async login({ commit }, params) {
        try {
            const login = await AccountReq.LoginApiReq(params)
            if (login.data.code == 200) {
                alert('登陆成功')
                sessionStorage.setItem('logindatas', JSON.stringify(params.username)) // 本地存储一份
                commit('setlogindatas', params.username)
                //页面跳转
                location.replace('/home')
                // location.replace('./page.html')
            }
            else if (login.data.code == 300) {
                alert('密码错误，请重新输入')
                // return psw.textContent = ''
            }
            else if (login.data.code == 304) {
                alert('用户名不存在，请注册')
            }
            // })
            // console.log(login);
        } catch (error) {
            console.log(error);
        }
    },
    //注册
    async register({ commit }, params) {
        try {
            const register = await AccountReq.RegisterReq(params)
            if (register.data.code == 300) {
                alert('用户名已存在，请重新输入')
            }
            else if (register.data.code == 200) {
                alert('注册成功')
                sessionStorage.setItem('registerdatas', JSON.stringify(params.username)) // 本地存储一份
                commit('setregisterdatas', params.username)
                location.replace('http://localhost:8080/login')
            }
            else if (register.data.code == 404) {
                alert('服务器错误')
            }
        } catch (error) {
            console.log(error);
        }
    },
    //修改
    async upset({ commit }, params) {
        try {
            const upset = await AccountReq.UpsetReq(params)
            // console.log(upset.data);
            if (upset.data.code == 300) {
                alert('密码错误，修改失败')
            }
            else if (upset.data.code == 200) {
                alert('修改成功')
                commit('setupsetdatas',)
                sessionStorage.removeItem('logindatas');
                location.replace('http://localhost:8080/login')
            }
            else if (upset.data.code == 304) {
                alert('用户名不存在')
            }
            else if (upset.data.code == 404) {
                alert('服务器错误')
            }

        } catch (error) {
            console.log(error);
        }
    },
    //搜索
    async search({ commit }, params) {
        try {
            const search = await AccountReq.SearchReq(params)
            if (search.data.code == 300) {
                // alert('搜索的内容不存在，请重新输入')
                commit('setsearchdatas', search.data.datas)
            }
            else if (search.data.code == 200) {
                // alert('搜索成功')
                // sessionStorage.setItem('registerdatas', JSON.stringify(params.username)) // 本地存储一份
                commit('setsearchdatas', search.data.datas)
                // console.log(search.data.datas);
            }
            else if (search.data.code == 404) {
                console.log('服务器错误');
            }
        } catch (error) {
            console.log(error);
        }
    },
    //添加购物车
    async Shopcars({ commit }, params) {
        try {
            const Shopcar = await AccountReq.ShopcarReq(params)
            if (Shopcar.data.code == 200) {
                // alert('添加成功')
                sessionStorage.setItem('setShopcardatas', JSON.stringify(params)) // 本地存储一份
                commit('setShopcardatas', params)
                // console.log(search.data.datas);
            }
            else if (Shopcar.data.code == 404) {
                alert('服务器错误')
            }
        } catch (error) {
            console.log(error);
        }
    },
    //获取购物车
    async Shopcardataslist({ commit }) {
        try {
            const shopcardataslist = await AccountReq.ShopcardatasReq()
            if (shopcardataslist.data.code == 200) {
                // alert('添加成功')
                // console.log(shopcardataslist.data.data);
                sessionStorage.setItem('setShopcardataslist', JSON.stringify(shopcardataslist.data.data)) // 本地存储一份
                commit('setShopcardataslist', shopcardataslist.data.data)
                // console.log(search.data.datas);
            }
            else if (shopcardataslist.data.code == 404) {
                alert('服务器错误')
            }
        } catch (error) {
            // console.log(error);
        }
    },
    //删除购物车数据
    async Deletedatas({ commit }, params) {
        try {
            const deletedatas = await AccountReq.DeletedatasReq(params)
            if (deletedatas.data.code == 200) {
                // alert('删除成功')
                // console.log(shopcardataslist.data.data);
                // console.log(search.data.datas);
                commit('setDeletedatas', deletedatas.data.data)
            }
            else if (deletedatas.data.code == 404) {
                alert('服务器错误')
            }
        } catch (error) {
            console.log(error);
        }
    },
}
export default actions