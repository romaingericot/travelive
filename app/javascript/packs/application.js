// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require("flickity-fade")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import {
    jarallax,
    jarallaxVideo
} from 'jarallax';
import AOS from 'aos';
import 'aos/dist/aos.css';

// Internal imports
import { initMapbox } from '../plugins/init_mapbox';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { liveTimer } from '../plugins/init_count_up'
import { initCountDown } from '../components/countdown'
// import { CountUp } from '../plugins/countUp.js';
// import { initSelect2 } from '../components/init_select2';
// import { Flickity } from '../plugins/init_flickity-fade';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here
  initUpdateNavbarOnScroll();
  initMapbox();
  AOS.init();
  jarallaxVideo();
  liveTimer();
  initCountDown();
  // countUp.start();
  // Flickity();
});
