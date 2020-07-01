import DailyIframe from '@daily-co/daily-js';

const initCountDown = () => {
  const second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24;

  // Sélectionner date et heure d'un tour
  const tourDate = document.getElementById('tour-date');

  let i = 0;

  if (tourDate) {
    const setTourDate = tourDate.dataset.datetime;

    // let countDown = new Date(`${setTourDate}`).getTime(),
    // let countDown = new Date(`Jul 1, 2020 10:34:00`).getTime(),
    let countDown = new Date(`Jul 1, 2020 10:34:00`).getTime(),

    x = setInterval(function() {

      let now = new Date().getTime(),
      distance = countDown - now;

      document.getElementById('days').innerText = Math.floor(distance / (day)),
      document.getElementById('hours').innerText = Math.floor((distance % (day)) / (hour)),
      document.getElementById('minutes').innerText = Math.floor((distance % (hour)) / (minute)),
      document.getElementById('seconds').innerText = Math.floor((distance % (minute)) / second);

      if (distance < 0) {
          let callFrame = DailyIframe.createFrame({
            showLeaveButton: true,
            showFullscreenButton: true,
            iframeStyle: {
              position: 'fixed',
              top: '0px',
              bottom: '80px',
              width: '50%',
              height: '100vh'
            }
          });
          callFrame.join({ url: tourDate.dataset.liveurl })

        const counter = document.querySelector('#counter-video')
        const containerMapVideo = document.querySelector('#container-map-video')
        counter.classList.add('d-none')
        containerMapVideo.classList.remove('d-none')

        clearInterval(x);
      }

    }, second)

};
};

export { initCountDown };
