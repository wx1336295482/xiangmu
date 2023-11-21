const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Deletcro {
    async deletcro(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let { ids } = req.body
        try {
            res.send({
                code: 200,
                msg: '删除成功',
            })
            let sqldata = `DELETE FROM shopcar WHERE id = '${ids}'`
            db.query(sqldata)
        }
        catch (error) {
            return res.send({
                code: 404,
                msg: '服务器报错',
            })
        }

    }
}
module.exports = new Deletcro
