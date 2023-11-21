//数据库
const db = require('../sql/db')
class Registerco {
    async registerco(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let username = req.userInfo
        let pwd = req.token
        //查找数据库中是否含有该用户名
        // let sql = `SELECT * FROM user`
        //必须加引号
        let sql = `SELECT username FROM user WHERE username = '${username}'`
        let datas = await db.query(sql)//返回的是一个数组
        // console.log(username, psw);

        // console.log(result.length != 0);
        try {
            if (datas.length != 0) {
                //在数据库中得到用户名和密码
                // let data = [username, psw]
                //查找数据库中是否含有该用户名和密码(username和pwd数据是表里面的)
                // let sql = `SELECT * FROM user info WHERE username = ? AND pwd = ?`
                // db.query(sql, data, (err, result) => {
                //     if (result.length != 0) {
                res.send({
                    code: 300,
                    msg: '用户名已注册',
                })
                // } else {
                // let data = [username, psw]
                // res.send({
                //     code: '200',
                //     msg: '注册成功',
                // })
                // console.log(data);
                // }
                // })
            } else {
                // res.send({
                //     code: 404,
                //     msg: '用户名不存在'
                // })
                res.send({
                    code: 200,
                    msg: '注册成功',
                })
                // console.log(username, pwd);
                //将数据插入数据库中
                let sqlQuery = `INSERT INTO user (username, pwd) VALUES('${username}', '${pwd}')`
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
module.exports = new Registerco