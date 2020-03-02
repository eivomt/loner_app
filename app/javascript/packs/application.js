//require("@rails/ujs").start()
import Rails from '@rails/ujs';
Rails.start();

require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initJoinButton } from '../plugins/join_button';

initMapbox();
initJoinButton();
