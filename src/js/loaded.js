window.addEventListener('load',() =>{
    const getAllTour = 'http://localhost:3000/getAllTours';

fetch(getAllTour)
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json();
  })
  .then(data => {
        const testimonial1 = document.querySelector('.testimonial-item');
        let html = `
        <div class="stars">
        <div class="profile mt-auto">
          <img src="img/pexels-asadphoto-1268855.jpg" class="testimonial-img" alt="">
          <h3>${data[0].reviews}</h3>
          <h4>${data[0].place}</h4>
        </div>
        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
      </div>
      <p>
      ${data[0].dayes}
      </p>
      <p>
      ${data[0].price}
      </p>
        `
        testimonial1.insertAdjacentHTML('afterbegin',html)
        console.log(data[0].reviews)
  });
  })
  
