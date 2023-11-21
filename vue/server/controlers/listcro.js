const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Listcro {
    async listcro(req, res) {
        let sql = `SELECT * FROM imgdata `
        let data = await db.query(sql)//返回的是一个数组
        try {
            res.send({
                code: 200,
                msg: '获取成功',
                datas: data
            })
            // console.log(data);
        } catch (error) {
            return res.send({
                code: 404,
                msg: '服务器报错',
            })
        }
    }
}
module.exports = new Listcro