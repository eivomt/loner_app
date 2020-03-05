//require("@rails/ujs").start()
import Rails from '@rails/ujs';
Rails.start();

import toastr from 'toastr';
import Typed from 'typed.js';

require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initHeroAnimation } from '../plugins/hero_animation';
import { initJoinButton } from '../plugins/join_button';
import { initShowAnimation } from '../plugins/show_animation';


window.showNotification = (text, url) => {
  toastr.options.progressBar = true;
  toastr.info(text);
  toastr.options.timeOut = 3000;
  toastr.options.onclick = () => window.location = url;
}

initMapbox();
initHeroAnimation();
initJoinButton();
// initShowAnimation();

