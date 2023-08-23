var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('supraonix'); //va a llamar a supraonix.hbs
});

module.exports = router;

