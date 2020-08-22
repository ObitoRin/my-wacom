/*商品模块*/

//引入express
const express = require('express')

//引入数据连接池
const pool = require('./pool.js')

//创建后端路由接口对象
const router = express.Router()

router.get('/bigPro',(req, res)=>{
    let sql = 'SELECT uid,title,details,price,images FROM product'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/lifePro',(req, res)=>{
    let sql = 'SELECT uid,title,details,price,images FROM proLife'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/sortProOne',(req, res)=>{
    let sql = 'SELECT uid,title,details,images,bgLeft,bgRight FROM sortProOne'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/sortProTwo',(req, res)=>{
    let sql = 'SELECT uid,title,details,images,bgLeft,bgRight FROM sortProTwo'

    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

module.exports = router
