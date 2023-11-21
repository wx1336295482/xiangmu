const jwt = require("jsonwebtoken")

//加密模块(处理数据)
let upsettoken = (req, res, next) => {
    try {
        let { username, psw, pwds } = req.body
        let token = jwt.sign({ psw: pwds }, 'test ^_^')
        req.userInfo = username
        req.pswInfo = psw
        req.upsetInfo = token
        // console.log(pwded);
        next()
    } catch (error) {
        // 错误处理
        console.error("生成token时发生错误", error);
        res.status(500).json({ error: "生成token时发生错误" });
    }

}
module.exports = upsettoken