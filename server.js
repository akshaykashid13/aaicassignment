var express    = require("express");
var ApiRoutes = require('./routes/routes');
var bodyParser = require('body-parser');
var app = express();

app.use(bodyParser.urlencoded({ extended: true }));

app.use(bodyParser.json());

var router = express.Router();

//route to handle user registration
router.post('/register',ApiRoutes.register);
router.post('/login',ApiRoutes.login)
router.get('/list', ApiRoutes.list);
router.get('/search', ApiRoutes.searchByName);

app.use('/api', router);
app.listen(3000);