const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class ShoppingList {
    async shoppinglist(req, res) {
        let sql = `SELECT * FROM shoppinglist `
        let datas = await db.query(sql)
        try {
            if (datas.length > 0) {
                res.send({
                    code: 200,
                    msg: '获取成功',
                    data: datas
                })
            }
        }
        catch (error) {
            res.send({
                code: 404,
                msg: '服务器报错',
            })
        }
    }
}
module.exports = new ShoppingList