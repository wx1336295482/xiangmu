const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Details {
    async details(req, res) {
        let sql = `SELECT * FROM details `
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
            return res.send({
                code: 404,
                msg: '服务器报错',
            })
        }
    }
}
module.exports = new Details