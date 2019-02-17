import initApiRequest from './modules/noticias-api.js';
import initNightMode from './modules/night-mode.js';
//import initLikeRequest from './modules/like-api.js';
import initLikeManager from './modules/like-manager.js';
import initMostLikedRequest from './modules/most-liked.js';

initApiRequest();
//initLikeRequest();
initNightMode();
initMostLikedRequest();
initLikeManager();

