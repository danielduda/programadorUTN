var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    //.render para llamar al archivo .hbs
  res.render('square'); //va a llamar a square.hbs
});

module.exports = router;
