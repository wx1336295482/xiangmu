//数据库
const db = require('../sql/db')
class Shopcarcro {
    async shopcarcro(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let { imgs } = req.body
        let { total } = req.body
        let { titles } = req.body
        let { contents } = req.body
        let { prices } = req.body
        try {
            res.send({
                code: 200,
                msg: '添加成功',
            })
            let sqlQuery = `INSERT INTO shopcar (img, content,title,prices,total) VALUES('${imgs}', '${titles}','${contents}','${prices}','${total}')`
            db.query(sqlQuery)

        }
        catch (error) {
            return res.send({
                code: 404,
                msg: '服务器报错',
            })
        }

    }
}
module.exports = new Shopcarcro