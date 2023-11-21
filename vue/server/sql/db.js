//防止数据库断开
const mysql = require('mysql');
// 导入数据可接口 (导入数据库的基本信息)
const pool = mysql.createPool(require("../config/index").dev);
// 导出数据库接口 
module.exports.Pool = pool;
// 数据库 
module.exports.query = (sql, values, cb) => {
    if (typeof cb == "function") {
        pool.getConnection((err, connection) => {
            if (err) {
                connection.release(); cb(err);
            } else {
                connection.query(sql, values, (error, rows) => {
                    connection.release(); cb(error, rows);
                });
            }
        });
    } else {
        return new Promise((resolve, reject) => {
            pool.getConnection((err, connection) => {
                if (err) {
                    connection.release(); reject(err);
                } else {
                    connection.query(sql, values, (error, rows) => {
                        connection.release();
                        if (error) reject(error);
                        else
                            resolve(rows);
                    });
                }
            });
        });
    }
};