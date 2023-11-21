const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Searchcro {
    async searchcro(req, res) {
        let { inputVal } = req.body
        // console.log(inputVal);
        let sql = `SELECT * FROM search WHERE title LIKE '%${inputVal}%'`
        let data = await db.query(sql)//返回的是一个数组
        // console.log(data);
        try {
            if (data.length != 0) {
                res.send({
                    code: 200,
                    msg: '搜索成功',
                    datas: data
                })
            }
            else {
                res.send({
                    code: 300,
                    msg: '搜索失败',
                })
            }
            // console.log(data);
        } catch (error) {
            return res.send({
                code: 404,
                msg: '服务器报错',
            })
        }
    }
}
module.exports = new Searchcro