const jwt = require('jsonwebtoken');
//数据库
const db = require('../sql/db')
class Logincro {
    async logincro(req, res) {
        // var connection = mysql.createConnection(sqldata)
        let username = req.userInfo
        let pwd = req.pswInfo
        // console.log(pwd);
        // console.log(username, pwd);
        //查找数据库中是否含有该用户名
        // let sql = `SELECT * FROM user`
        //必须加引号
        let sql = `SELECT username FROM user WHERE username = '${username}'`
        let datas = await db.query(sql)//返回的是一个数组
        // console.log(datas.length);
        try {
            if (datas.length != 0) {
                //在数据库中通过用户名得到密码+解密
                let sqlss = `SELECT pwd FROM user WHERE username = '${username}'`
                let tokensz = await db.query(sqlss)
                let tokenpwd = tokensz[0].pwd
                const pwded = jwt.verify(tokenpwd, 'test ^_^')
                const pwds = pwded.psw
                // console.log(tokensz);
                if (pwd == pwds) {
                    res.send({
                        code: 200,
                        msg: '登录成功',
                    })
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
            })
        }

    }
}
module.exports = new Logincro