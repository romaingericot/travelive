import { CountUp } from 'countup.js';


const liveTimer = () => {
  const target = document.getElementById("countup");
  if (target) {
    var countUp = new CountUp('countup', 2000);
    countUp.start();
  }
}

export { liveTimer };
