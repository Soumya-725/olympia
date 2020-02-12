const mySQL = require('mysql');
const mySQLConn = mySQL.createConnection({
                    host:'localhost',
                    user:'root',
                    password:'Password@123',
                    database:'Cognitiolympics2k20'
                  });
  
  mySQLConn.connect((err) => {
    if(!err) return console.log('connected');
    return console.log(err);
  });

  module.exports = { mySQLConn };