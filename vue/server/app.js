const express = require('express')
const cors = require('cors')
const app = express()
const port = 3000

//引入路由
const router = require('./routers/registerro')
//解决跨域问题
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
//导入路由
app.use('/api', router)

app.listen(port, () => console.log(`Example app listening on port ${port}!`))