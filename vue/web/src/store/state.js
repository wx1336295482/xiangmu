const state = {
    datas: JSON.parse(sessionStorage.getItem('datas')) ? JSON.parse(sessionStorage.getItem('datas')) : [],
    bannerdatas: JSON.parse(sessionStorage.getItem('bannerdatas')) ? JSON.parse(sessionStorage.getItem('bannerdatas')) : [],
    shoppinglistdatas: JSON.parse(sessionStorage.getItem('shoppinglistdatas')) ? JSON.parse(sessionStorage.getItem('shoppinglistdatas')) : [],
    logindatas: JSON.parse(sessionStorage.getItem('logindatas')) ? JSON.parse(sessionStorage.getItem('logindatas')) : [],
    registerdatas: JSON.parse(sessionStorage.getItem('registerdatas')) ? JSON.parse(sessionStorage.getItem('registerdatas')) : [],
    searchdatas: [],
    upsetdatas: [],
    detailsdatas: JSON.parse(sessionStorage.getItem('detailsdatas')) ? JSON.parse(sessionStorage.getItem('detailsdatas')) : [],
    Shopcardatas: JSON.parse(sessionStorage.getItem('Shopcardatas')) ? JSON.parse(sessionStorage.getItem('Shopcardatas')) : [],
    Shopcardataslist: JSON.parse(sessionStorage.getItem('Shopcardataslist')) ? JSON.parse(sessionStorage.getItem('Shopcardataslist')) : [],
    Deletedataslist: []
}
export default state