import anime from 'animejs';
import Rails from '@rails/ujs';

const initJoinButton = () => {
  const button = document.querySelector('#join-button')

  if (!button) {
    return;
  }

  let joined = button.dataset.joined == 'true';
  let updating = false;

  const handleClick = () => {
    if (updating) {
      return;
    }

    updating = true;

    const goingDiv = document.getElementById('going-count');
    const missingDiv = document.getElementById('missing-count');
    const going = parseInt(document.getElementById('going-count').innerText);
    const missing = parseInt(document.getElementById('missing-count').innerText);
    const goingText = document.getElementById('going-text');
    const joinText = document.getElementById('join-text');
    const userAvatarLink = document.querySelector('.navbar-avatar');
    const peopleGoing = document.getElementById('event-people-going');


    if (missing == 0 && !joined) {
      return;
    }

    const updateState = () => {
      joined = !joined;
      updating = false;

      if (joined) {
        joinText.classList.add('d-none');
        goingText.classList.remove('d-none');
        button.classList.remove('red-border')
      } else {
        joinText.classList.remove('d-none');
        goingText.classList.add('d-none');
        button.classList.add('red-border')
      }
    }

    const updateCounters = (num) => {
      goingDiv.innerText = going + num;
      missingDiv.innerText = missing - num;
    }

    const joinRequest = () => {
      updateCounters(1);
      peopleGoing.insertAdjacentElement('afterbegin', userAvatarLink.cloneNode(true));

      Rails.ajax({
        url: button.dataset.join_url,
        type: 'POST',
        data: '',
        success: function(data) {
          button.dataset.cancel_url = data;
          updateState();
        },
        error: function(data) {}
      });
    }

    const cancelRequest = () => {
      updateCounters(-1);
      peopleGoing.querySelector(`#${userAvatarLink.id}`).remove();

      Rails.ajax({
        url: button.dataset.cancel_url,
        type: 'DELETE',
        data: '',
        success: function(data) {
          updateState();
        },
        error: function(data) {}
      });
    }
      if (joined) {
        cancelRequest();
      } else {
        feedbackAnimation();
        joinRequest();
      }
    };

  button.addEventListener('click', handleClick, false);
  button.addEventListener('touchend', handleClick, false);
}

const feedbackAnimation = () => {

  let updatingAnim = false

  if (updatingAnim) {
    return
  }

  updatingAnim = true

  const avatars = document.querySelectorAll(".feedback-avatar")
  const plus = document.querySelector(".show-plus")
  const plusBox = document.querySelector(".plus-box-show")
  const me = document.querySelector(".feedback-avatar-me")
  const allAvatars = avatars + me
  const circlePath = "M 64 32 C 64 36.418 63.105 40.627 61.485 44.456 C 59.866 48.284 57.523 51.732 54.627 54.627 C 51.732 57.523 48.284 59.866 44.456 61.485 C 40.627 63.105 36.418 64 32 64 C 26.109 64 20.59 62.408 15.849 59.631 C 11.108 56.854 7.146 52.892 4.369 48.151 C 1.592 43.41 0 37.891 0 32 C 0 28.465 0.573 25.065 1.631 21.886 C 2.69 18.706 4.233 15.749 6.174 13.101 C 8.115 10.453 10.453 8.115 13.101 6.174 C 15.749 4.233 18.706 2.69 21.886 1.631 C 25.065 0.573 28.465 0 32 0 C 35.535 0 38.935 0.573 42.114 1.631 C 45.294 2.69 48.251 4.233 50.899 6.174 C 53.547 8.115 55.885 10.453 57.826 13.101 C 59.767 15.749 61.31 18.706 62.369 21.886 C 63.427 25.065 64 28.465 64 32 L 64 32"
  const plusPath = "M 63 35 C 58.333 35 53.667 35 49 35 C 44.333 35 39.667 35 35 35 C 35 39.667 35 44.333 35 49 C 35 53.667 35 58.333 35 63 C 32.667 63 30.333 63 28 63 C 28 53.667 28 44.333 28 35 C 18.667 35 9.333 35 0 35 C 0 32.5 0 30 0 27.5 C 9.333 27.5 18.667 27.5 28 27.5 C 28 18.333 28 9.167 28 0 C 30.333 0 32.667 0 35 0 C 35 0 35 0 35 0 C 35 9.167 35 18.333 35 27.5 C 37.333 27.5 39.667 27.5 42 27.5 C 44.333 27.5 46.667 27.5 49 27.5 C 51.333 27.5 53.667 27.5 56 27.5 C 58.333 27.5 60.667 27.5 63 27.5 L 63 35"
  const targets = [avatars, plus, plusBox, me]

  const timeline = anime.timeline({
    duration: 800
  })

  timeline
  .add({
  duration: 1000,
  targets: ".feedback-container",
  top: "200vh",
  easing: "easeInOutExpo"
  })

  .add ({
    duration: 500,
    targets: avatars,
    translateX: 131,
    delay: anime.stagger(100)
  })

  .add({
    targets: plus,
    duration: 300,
    fill: "#68E184"
  }, '-=1000')

  .add({
    targets: ".square",
    duration: 900,
    rotate: "-180",
  }, '-=1100')

  .add({
    targets: plus,
    duration: 1000,
    d: circlePath,
  }, '-=300')

  .add({
    targets: plusBox,
    left: '7.17%',
    width: '21%',

  }, '-=1100')

  .add({
    targets: me,
    duration: 750,
    opacity: 1,
    easing: 'easeOutExpo'
  }, '-=600')

  .add({
    targets: me,
    duration: 500,
    translateY: 200
  })

  .add({
    targets: plusBox,
    duration: 500,
    translateY: 200
  }, '-=500')

  .add({
    targets: avatars,
    translateY: 50,
    delay: anime.stagger(50)
  }, '-=350')

  .add({
    easing: "easeInExpo",
    targets: '.square',
    duration: 1500,
    rotate: "720"
  }, '-=300')

  .add({
    targets: plus,
    easing: "easeInOutExpo",
    duration: 500,
    d: plusPath,
  }, '-=1650')

   .add({
    duration: 1000,
    targets: plusBox,
    width: '13%',
    left: '11.3%',
    translateY: 0,
  }, '-=1800')

  .add({
  duration: 1000,
  targets: ".feedback-container",
  top: "-200vh",
  easing: "easeInOutExpo"
  }, '-=1300')

  .add({
    targets: '.square',
    duration: 800,
    rotate: '-270'
  }, '-=1600')

  .add({
    targets: avatars,
    duration: 1,
    translateY: 0
  })

  .add({
    targets: plus,
    fill: "transparent",
    duration: 1
  })

  .add({
    targets: plusBox,
    duration: 1,
    translateY: 0,
    // top: '11.5%'
  })

  .add({
    targets: me,
    duration: 1,
    opacity: 0,
    translateY: 0,
    translateX: 0
  })

  .add({
    targets: '.square',
    duration: 1,
    rotate: '-630'
  });

  updatingAnim = false
};


export { initJoinButton };
