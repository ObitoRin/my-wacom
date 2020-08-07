/*用户模块接口*/

//引入express
const express = require('express')

//引入数据连接池
const pool = require('./pool.js')

//创建后端路由接口对象
const router = express.Router()
    
//用户登录接口
router.post('/login', (req, res) => {
    //获取当前提交的用户信息
    let uname = req.body.uname
    let upwd = req.body.upwd
    let sql = 'select * from user where uname=? and upwd=?'

    //设置服务器响应头信息 解决跨域问题
    // res.set('Access-Control-Allow-Origin', 'http://localhost:8080')
    pool.query(sql, [uname, upwd], (err, result)=>{
        if(err) throw err
        //查询数据库表中的数据，有当前输入的账号和密码就可以登录成功
        if(result.length > 0) return res.send({code: 1, msg: 'success'})
        res.send({code: 0, msg: 'fail'})
    })
})

//用户注册接口
router.post('/register', (req, res)=>{
    //获取用户注册信息
    let obj = req.body
    let uname = req.body.uname
    
    let sql = 'select uname from user where uname=?'
    pool.query(sql, [uname], (err, result)=>{
        if(err) throw err
        //用户名已存在
        if(result.length > 0){
            res.send({code: 0, msg: 'fail'})
        }else{
            let uemail = req.body.uemail
            let sql = 'select uemail from user where uemail=?'
            pool.query(sql, [uemail], (err, result)=>{
                if(err) throw err
                //邮箱已存在
                if(result.length > 0){
                    res.send({code: 0, msg: 'fail'})
                }else{
                    let sql = 'insert into user set ?'
                    pool.query(sql, [obj], (err, result)=>{
                        if(err) throw err
                        //数据库表中发生变化：改变了几行
                        if(result.affectedRows > 0){
                            //设置服务器响应头信息 解决跨域问题
                            // res.set('Access-Control-Allow-Origin', 'http://localhost:8080')
                            res.send({code: 1, msg: 'success'})
                        }else{
                            res.send({code: 0, msg: 'fail'})
                        } 
                    })
                }
            })
        }
    })
})

module.exports = router
