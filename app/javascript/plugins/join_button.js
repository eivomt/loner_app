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
      } else {
        joinText.classList.remove('d-none');
        goingText.classList.add('d-none');
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

    const timeline = anime.timeline({
      duration : 450,
      easing : 'easeInOutExpo',
      complete: () => {}
    });

    timeline.add({
      targets : "#plus-joined",
      translateX: joined ? "-23.7px" : "0px",
      rotate: joined ? "-90" : "0",
    });

    timeline.add({
      targets : "#plus-join",
      translateX: joined ? "-0px" : "24.2px",
      rotate: joined ? "0" : "90",
    }, '-=250');

    timeline.add({
      targets : "#join-button",
      backgroundColor: joined ? "#68E184" : "#68E184",
      borderColor: joined ? "#68E184" : "#68E184",
    }, '-=630');

    if (joined) {
      cancelRequest();
    } else {
      joinRequest();
    }
  };

  button.addEventListener('click', handleClick, false);
  button.addEventListener('touchend', handleClick, false);
}

export { initJoinButton };
