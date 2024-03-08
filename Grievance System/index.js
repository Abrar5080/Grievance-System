if ('serviceWorker' in navigator) {
  navigator.serviceWorker.register('serviceWorker.js');
}

// link to a image file
var iconUrl = 'img/images.png';

// create the <img> html element
// on first load it will request the image
// second time it will load it from cache directly thanks to the service worker
var imgElement = document.createElement('img');
imgElement.src = iconUrl;

