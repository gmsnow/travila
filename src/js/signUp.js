'use strict'
const form = document.querySelector('form');
const username = document.querySelector('.username');
const phone = document.querySelector('.phone');
const email = document.querySelector('.email');
const password = document.querySelector('.password');
const conformP = document.querySelector('.conformP');
form.addEventListener('submit',function(e) {
    let name = username.value;
    if(!name) {
        e.preventDefault()
        username.style.backgroundColor = 'rgba(255, 0, 0, 0.293)'
        username.value = 'Please enter a valid username'
    }
    if(name.length < 4) {
        e.preventDefault()
        username.style.backgroundColor = 'rgba(255, 0, 0, 0.293)'
        username.value = 'the username is too short'
    }
    const phonN = Number(phone.value);
    if (isNaN(phonN) || phonN.length < 9)  {
        e.preventDefault();
        phone.style.backgroundColor = 'rgba(255, 0, 0, 0.293)';
        phone.value = 'Please enter a valid phone number'
        return false;
    }
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email.value)) {
        e.preventDefault();
        email.style.backgroundColor = 'rgba(255, 0, 0, 0.293)';
       email.value = 'invalid Email'
        return false;
    }
    const passwordV = password.value
    if (passwordV.length < 8) {
       e.preventDefault();
       password.style.backgroundColor = 'rgba(255, 0, 0, 0.293)';
       password.type = 'text'
       password.value = 'the password must at least contain more then 8 characters'
        return false;
    }
     if(passwordV !== conformP.value) {
        e.preventDefault();
        conformP.style.backgroundColor = 'rgba(255, 0, 0, 0.293)';
        conformP.value = 'the password must be equal'
        conformP.type = 'text'
        return false;
    }else {
        form.method = 'post'
    }
   
})

username.addEventListener('focus',()=>{
    username.style.backgroundColor = 'white'
    username.value = ''
})
phone.addEventListener('focus',()=>{
    phone.style.backgroundColor = 'white'
    phone.value = ''
})
email.addEventListener('focus',()=>{
    email.style.backgroundColor = 'white'
    email.value = ''
})
password.addEventListener('focus',()=>{
    password.style.backgroundColor = 'white'
    password.value = ''
    password.type = 'password'
})
conformP.addEventListener('focus',()=>{
    conformP.style.backgroundColor = 'white'
    conformP.value = ''
    conformP.type = 'password'
})
