const Container = document.querySelector('.Container');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');

// populateUI();
let ticketPrice = +movieSelect.value;


// Save selected Price index

// function setMovieData(movieIndex, MoviePrice) {
//   localStorage.setItem('selectedMovieIndex', movieIndex);
//   localStorage.setItem('selectedMoviePrice', moviePrice);
// } 
// get data from the localstorage and populate UI

// function populateUI(){
//   const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));

//   if(selectedSeats !== null && selectedSeats.length > 0) {
//     seats.forEach((seat, index) => {
//       if(selectedSeats.indexOf(index) > -1) {
//         seat.classList.add('selected');
//       }
//     });
//   }

//   const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');
//   if(selectedMovieIndex !== null){
//     movieSelect.selectedIndex = selectedMovieIndex;
//   }
// }


 // Update total and Count

function updateSelectedCount() {
  const selectedSeats = document.querySelectorAll('.row .seat.selected');

   const seatsIndex = [...selectedSeats].map(function (seat) {
    return [...seats].indexOf(seat);
   });

   // localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

  
  const selectedSeatsCount = selectedSeats.length;

  count.innerText = selectedSeatsCount;
  total.innerText = selectedSeatsCount * ticketPrice;
}

 // Movie select event

movieSelect.addEventListener('change', (e) => {
  ticketPrice = +e.target.value;
  setMovieData(e.target.selectedIndex, e.target.value);
  updateSelectedCount();
});

Container.addEventListener('click', (e) => {
  if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')) {
  	e.target.classList.toggle('selected');
  }
   
  updateSelectedCount();
  
});
  // updateSelectedCount();