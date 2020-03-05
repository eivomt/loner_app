//require("@rails/ujs").start()
import Rails from '@rails/ujs';
Rails.start();

import toastr from 'toastr';

require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initHeroAnimation } from '../plugins/hero_animation';
import { initJoinButton } from '../plugins/join_button';
import { initFadeOnScroll } from '../plugins/hero_fade';


window.showNotification = (text, url) => {
  toastr.options.progressBar = true;
  toastr.info(text);
  toastr.options.timeOut = 3000;
  toastr.options.onclick = () => window.location = url;
}

const link = document.getElementById("alert-list");
if (link) {
  console.log("We have link");
  $('.dropdown').on('show.bs.dropdown', () => {
    Rails.ajax({
      url: `/users/${link.dataset.userid}/read_alerts`,
      type: 'PATCH',
      data: "",
      success: function(data) {  },
      error: function(data) {}
    })
  });

  $('.dropdown').on('hide.bs.dropdown', () => {
    const badge = document.getElementById('unread-count');

    if (badge) {
      badge.innerHTML = '';
    }
  });
}

initMapbox();
initHeroAnimation();
initJoinButton();
initFadeOnScroll();

