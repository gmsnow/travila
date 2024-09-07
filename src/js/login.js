'use strict'
const usernameLogin = document.querySelector('#username')
const passwordlogin = document.querySelector('#password')
const form = document.querySelector('form')

window.addEventListener('load',()=>{
    const allUsers = fetch('http://localhost:3000/getAllUsers')
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json();
  })
  .then(data => {
        form.addEventListener('submit',(e)=>{
            e.preventDefault()
            const usernameToCheck = usernameLogin.value;
            const user = data.find(user => user.username === usernameToCheck);
            if (user){
                form.method = 'post';
                form.submit()
            }else {
                usernameLogin.value = 'there is no username with this name'
                e.preventDefault()
                usernameLogin.addEventListener('focus',() =>{
                    usernameLogin.value = ''
                })
            }
        })
    });;
  })
  .catch(error => console.error('There was a problem with the fetch operation:', error));


