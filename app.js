/*后端服务器*/

const express = require('express')

//引入body-parser 获取post方式传递的数据
const bodyParser = require('body-parser')

//引入用户路由接口
const userRouter = require('./server-router/user.js')

//创建web服务器
const app = express()
//设置端口号
app.listen(3000, () => {
    console.log('服务器已开启')
})


//使用中间件，将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
    extended: false
}))

//添加前缀 访问形式;并挂载用户路由
app.use('/user', userRouter)