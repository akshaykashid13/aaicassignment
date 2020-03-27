var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  database : 'HotelDB'
});

connection.connect(function(err){
if(!err) {
    console.log("Database is connected ");
} else {
    console.log("Error connecting database");
}
});

let createusers = `CREATE TABLE users (
  email varchar(100) COLLATE utf8_unicode_ci UNIQUE NOT NULL,
  password varchar(255) COLLATE utf8_unicode_ci NOT NULL )`;

connection.query(createusers, function(err, results, fields) {
    if (err) {
      console.log(err.message);
    }
  });
    
exports.register = function(req,res){
  var today = new Date();
  var users={
      "email":req.body.email,
      "password":req.body.password
    }
    connection.query('INSERT INTO users SET ?',users, function (error, results, fields) {
    if (error) {
      console.log("error ocurred",error);
      res.send({
        "code":400,
        "failed":"Error Ocurred or Duplicate Entry"
      })
    }else{
      res.send({
        "code":200,
        "success": users.email + " registered sucessfully"
          });
    }
    });
  }

  exports.login = function(req,res){
    var email= req.body.email;
    var password = req.body.password;
    connection.query('SELECT * FROM users WHERE email = ?',[email], function (error, results, fields) {
    if (error) {
      res.send({
        "code":400,
        "failed":"error ocurred"
      })
    }else{
      if(results.length >0){
        if(results[0].password == password){
          res.send({
            "code":200,
            "success":"logged-in as " + email
              });
        }
        else{
          res.send({
            "Failure":"Email and password does not match"
              });
        }
      }
      else{
        res.send({
          "Failure":"Email does not exits"
            });
      }
    }
    });
  }

  exports.list = function(req, res){
    connection.query('SELECT * FROM restaurants ORDER BY distance ASC', function(error, results, fields){
      if(error){
        res.send({
          "code": "Failed to Fetch Data"
        })
      }else{
        res.send({
          "Result": results
        })
      }
    })
  }


  exports.searchByName = function(req,res){
    var search= req.body.search;
    connection.query("SELECT * FROM restaurants WHERE name LIKE '%BBQ%' ORDER BY distance ASC", [search], function(error, results, fields){
      if(error){
        res.send({
          "code": "Failed to Fetch Data"
        })
      }else{
        res.send({
          "Result": results
        })
      }
    })
  }