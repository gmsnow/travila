const express = require('express')
const app = express();
const middle = express.urlencoded({ extended: true});
const router = require('./models/usersModel')
app.get('/',router.travila)
// app.post('/',middle,router.insertSignUp)
app.get('/login',router.login)
app.post('/login',middle,router.loginPost)
app.get('/SignUp',router.signUp)
app.post('/SignUp',middle,router.insertSignUp)
app.get('/getAllUsers',router.getAllUsers)
app.get('/getAllTours',router.getAllTour)

app.set('view engine','ejs')
app.use(express.static('src'))
module.exports = app;