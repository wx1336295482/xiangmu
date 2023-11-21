import request from '../uitls/request';
import { HomeImgApi, BannerApi, ShoppingListApi, LoginApi, RegisterApi, SearchApi, UpsetApi, DetailsApi, ShopcarApi, ShopcardatasApi, DeletedatasApi } from '../api/accountApi';
//homeimg数据
class AccountReq {
    HomeImgReq() {
        return request.get(HomeImgApi.HomeImgApi)
    }
    BannerReq() {
        return request.get(BannerApi.bannerApi)
    }
    ShoppingListReq() {
        return request.get(ShoppingListApi.shoppinglistApi)
    }
    LoginApiReq(params) {
        return request.post(LoginApi.loginApi, params)
    }
    RegisterReq(params) {
        return request.post(RegisterApi.registerApi, params)
    }
    SearchReq(params) {
        return request.post(SearchApi.searchApi, params)
    }
    UpsetReq(params) {
        return request.post(UpsetApi.upsetApi, params)
    }
    DetailsReq() {
        return request.get(DetailsApi.detailsApi)
    }
    ShopcarReq(params) {
        return request.post(ShopcarApi.shopcarApi, params)
    }
    ShopcardatasReq() {
        return request.get(ShopcardatasApi.shopcardatasApi)
    }
    DeletedatasReq(params) {
        return request.post(DeletedatasApi.deletedatasApi, params)
    }
}
export default new AccountReq