/*商品模块*/

//引入express
const express = require('express')

//引入数据连接池
const pool = require('./pool.js')

//创建后端路由接口对象
const router = express.Router()

router.get('/bigPro',(req, res)=>{
    let sql = 'SELECT uid,title,details,price,images,num FROM product'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/lifePro',(req, res)=>{
    let sql = 'SELECT uid,title,details,price,images,num FROM proLife'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/sortProOne',(req, res)=>{
    let sql = 'SELECT uid,title,details,images,bgLeft,bgRight,num FROM sortProOne'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/sortProTwo',(req, res)=>{
    let sql = 'SELECT uid,title,details,images,bgLeft,bgRight,num FROM sortProTwo'

    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/productPage',(req, res)=>{
    //根据id的获取对应的产品信息
    let uid = req.query.uid
    let sql = 'SELECT uid,title,details,price,codename,stock,images FROM productPage WHERE uid=?'
    pool.query(sql, [uid], (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

router.get('/addresses',(req, res)=>{
    let sql = 'SELECT addresses FROM addresses'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})
module.exports = router
