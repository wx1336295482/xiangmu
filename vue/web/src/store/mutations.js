import AccountReq from '../../api/accountReq';
const mutations = {
    setdatas(state, dataed) {
        state.datas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setbannerdatas(state, dataed) {
        state.bannerdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setshoppinglistdatas(state, dataed) {
        state.shoppinglistdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setlogindatas(state, dataed) {
        state.logindatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setregisterdatas(state, dataed) {
        state.registerdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setsearchdatas(state, dataed) {
        state.searchdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setupsetdatas(state, dataed) {
        state.upsetdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setdetailsdatas(state, dataed) {
        state.detailsdatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setShopcardatas(state, dataed) {
        state.Shopcardatas = dataed; // 更新状态中的数据 },
        // console.log(state.datas);
    },
    setShopcardataslist(state, value) {
        state.Shopcardataslist = value;
    },
    setDeletedatas(state, value) {
        state.Deletedataslist = value;
    },
}
export default mutations