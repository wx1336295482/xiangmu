//数据库
const db = require('../sql/db')
class Commoncro {
    async commoncro(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let { commonVal } = req.body
        let sql = `SELECT message FROM common `
        let datas = await db.query(sql)
        try {
            if (commonVal != '') {
                res.send({
                    code: 200,
                    msg: '评论成功',
                    data: datas
                })
                //将数据存入数据库
                let sqlQuery = `INSERT INTO common (message) VALUES('${commonVal}')`
                db.query(sqlQuery)
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
module.exports = new Commoncro