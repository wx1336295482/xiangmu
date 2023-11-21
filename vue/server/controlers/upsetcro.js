const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Upsetcro {
    async upsetcro(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let username = req.userInfo
        let pwd = req.pswInfo
        let upsetpwd = req.upsetInfo
        // console.log(upsetpwd);
        let sql = `SELECT username FROM user WHERE username = '${username}'`
        let datas = await db.query(sql)//返回的是一个数组
        // console.log(username, pwd, upsetpwd);

        // console.log(result.length != 0);
        try {
            if (datas.length != 0) {
                let sql = `SELECT pwd FROM user WHERE username = '${username}'`;
                let result = await db.query(sql);
                let tokenpwd = result[0].pwd;
                const pwded = jwt.verify(tokenpwd, 'test ^_^')
                const pwdeds = pwded.psw
                // console.log(pwd == pwdeds);
                if (pwd == pwdeds) {
                    res.send({
                        code: 200,
                        msg: '修改成功',
                    })
                    // 将数据插入数据库中
                    let sqlQuery = `UPDATE user SET pwd='${upsetpwd}' WHERE username='${username}'`
                    db.query(sqlQuery)
                } else {
                    res.send({
                        code: 300,
                        msg: '密码错误',
                    })
                    // console.log(data);
                }
            } else {
                res.send({
                    code: 304,
                    msg: '用户名不存在'
                })

            }

        }
        catch (error) {
            return res.send({
                code: 404,
                msg: '服务器报错',
                data: error
            })
        }

    }
}
module.exports = new Upsetcro