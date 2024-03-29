var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {

    var novedades= await novedadesModel.getNovedades();

    novedades= novedades.splice (0,5); //selecciona los primeros 5 elementos del array
    novedades = novedades.map (novedad =>{

      if(novedad.img_id){
    
          const imagen = cloudinary.url (novedad.img_id, {
              width:460,
              crop: 'fill'
    
          });
          return {
          ...novedad,
            imagen
          }
      } else{
        return {
          ...novedad,
     
          imagen: `/images/nodisponible.jpeg`
        }
      }
    
    });
  res.render('index',{novedades});
});

router.post ('/', async(req,res,next) => {
  var nombre = req.body.nombre;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;
  var apellido = req.body.apellido;

  var obj ={
    to: 'daniel_duda93@gmail.com',
    subject: 'contacto web',
    html: nombre + " " + apellido +  " se contacto a través de la web y quiere mas información a este correo: " + email + ". <br> además, hizo este comentario : " + mensaje + ". <br> su tel es: "+ tel
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });
  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'mensaje enviado correctamente'
  });
});


module.exports = router;
