const jwt = require("jsonwebtoken")

//加密模块(处理数据)
let logintoken = (req, res, next) => {
    try {
        let { username, psw } = req.body
        req.userInfo = username
        req.pswInfo = psw
        // console.log(username, psw);
        next()
    } catch (error) {
        // 错误处理
        console.error("生成token时发生错误", error);
        res.status(500).json({ error: "生成token时发生错误" });
    }

}
module.exports = logintoken