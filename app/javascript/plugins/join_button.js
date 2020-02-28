import anime from 'animejs';
import Rails from '@rails/ujs';

const initJoinButton = () => {
  const button = document.querySelector('#join-button')

  if (!button) {
    return;
  }

  let toggle = button.dataset.joined == 'true';

  button.addEventListener('click', () => {
    const goingDiv = document.getElementById('going-count');
    const missingDiv = document.getElementById('missing-count');
    const going = parseInt(document.getElementById('going-count').innerText);
    const missing = parseInt(document.getElementById('missing-count').innerText);

    if (missing == 0) {
      alert('NO MORE ROOM!');
      return;
    }

    const updateCounters = () => {
      goingDiv.innerText = going + 1;
      missingDiv.innerText = missing - 1;
    }

    const joinRequest = () => {
      Rails.ajax({
        url: button.dataset.join_url,
        type: 'POST',
        data: '',
        success: function(data) {
          updateCounters();
        },
        error: function(data) {}
      });
    }

    const timeline = anime.timeline({
      duration : 750,
      easing : 'easeInOutExpo',
      complete: () => joinRequest()
    });

    timeline.add({
      targets : "#plus",
      translateX: toggle ? "0px" : "27px",
      rotate: toggle ? "0" : "90",
    })

    timeline.add({
      targets : "#join-button",
      backgroundColor: toggle ? "#FF4B4E" : "#00bd67",
      borderColor: toggle ? "#FF4B4E" : "#00bd67",
    },
    '-=630'
    );

    // Toggle changes from true to false or false to true
    toggle = !toggle;
  });
}

export { initJoinButton };
