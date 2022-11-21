var mysql = require('mysql');
var conn = mysql.createConnection({
  // host: 'localhost', // Replace with your host name
  // user: 'root',      // Replace with your database username
  // password: '',      // Replace with your database password
  // database: 'dump-testingdb'// Replace with your database Name

  host: 'xertifyprod2022.cqq7tv3cjadg.us-east-1.rds.amazonaws.com', // Replace with your host name
  user: 'tesitingdbuser',      // Replace with your database username
  password: 'xeydvgy#*2020',      // Replace with your database password
  database: 'testingdb' // // Replace with your database Name
 
}); 
 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database is connected successfully !');
});
//conn.end();
module.exports = conn;




















//host: 'xertifyprod2022.cqq7tv3cjadg.us-east-1.rds.amazonaws.com', // Replace with your host name
  //user: 'tesitingdbuser',      // Replace with your database username
  //password: 'xeydvgy#*2020',      // Replace with your database password
  //database: 'testingdb' // // Replace with your database Name