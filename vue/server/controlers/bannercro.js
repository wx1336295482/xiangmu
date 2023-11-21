const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Banner {
    async banner(req, res) {
        let sql = `SELECT * FROM banner `
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
module.exports = new Banner