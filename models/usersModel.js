const pool = require('../connection/config')
const express = require('express');
const validator = require('validator');
const bcrypt = require('bcrypt');



module.exports.travila = (req,res)=>{ 
res.render('travila')    
}


module.exports.signUp = (req,res)=>{ 
res.render('signUp')    
}



module.exports.insertSignUp = (req,res) => {
    const insertData = async (data) => {
        const {username ,phone ,email, password,conformP} = data;
        try {
          const hashedPassword = await bcrypt.hash(password, 11);
           if(validator.isEmail(email)){
               // Using parameterized query to prevent SQL Injection
               
               const queryText = 'INSERT INTO public.users(username, phone ,email , hashedPass, conformPass) VALUES($1, $2, $3, $4, $5) RETURNING *;';
               const res = await pool.query(queryText, [username, Number(phone) ,email , hashedPassword, hashedPassword]);
              console.log('inserted')
           }
          
        } catch (err) {
          console.error('Error executing query', err.stack);
        } finally {
          // Closing the pool
          // pool.end(() => {});
        }
      }
      
      // Call the function with userData
    
        insertData(req.body); // Await the async function
        res.redirect('/login'); // Render after inserting
     
    };


// //===========================//
module.exports.login = (req,res)=>{
res.render('signIn')    
}
module.exports.loginPost = async(req, res) => {
    const { usernamelogin, passwordlogin } = req.body;
    try {
        const queryMangment = `SELECT * FROM public.users WHERE username = '${usernamelogin}'`;
        pool.query(queryMangment, (error, results, fields) => {
          if (error) {
         return console.log(error);
          }else {
             // Password provided by the user during login
        const inputPassword = passwordlogin;
            const user = results.rows.map(item => {
             
              const storedHashedPassword = item.hashedpass;
              async function comparePasswords(plainPassword, hashedPassword) {
                try {
                  const match = await bcrypt.compare(plainPassword, hashedPassword);
                  if (match) {
                    res.redirect('/')
                  } else {
                    res.json({
                      message : 'the password not match'
                    })
                    // Handle login failure
                  }
                } catch (error) {
                  console.error('Error comparing passwords:', error);
                }
              }
              comparePasswords(inputPassword, storedHashedPassword);
              
            })
            
          }  
        })}
        catch (err) {
          console.log(err)
        }
      }



module.exports.getAllUsers = ((req, res) => {
  const queryMangment = `SELECT * FROM public.users`;
    pool.query(queryMangment, (error, results, fields) => {
      if (error) {
     return console.log(error);
      }else {
        res.json(results.rows); 
      }  
    })});
module.exports.getAllTour = ((req, res) => {
  const queryMangment = `SELECT * FROM public.tour`;
  pool.query(queryMangment, (error, results, fields) => {
    if (error) {
   return console.log(error);
    }else {
      res.json(results.rows); 
    }  
    })});

