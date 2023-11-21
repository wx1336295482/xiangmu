const jwt = require("jsonwebtoken")

//加密模块(处理数据)
let token = (req, res, next) => {
    try {
        let { username, psw } = req.body
        // console.log(username, psw);
        let token = jwt.sign({ psw: psw }, 'test ^_^')
        req.userInfo = username
        req.token = token
        // console.log(req.token);
        next()
    } catch (error) {
        // 错误处理
        console.error("生成token时发生错误", error);
        res.status(500).json({ error: "生成token时发生错误" });
    }

}
module.exports = token