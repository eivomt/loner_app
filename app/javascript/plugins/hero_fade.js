console.log('hello fader')
const initFadeOnScroll = () => {
  let heroLogo = document.getElementById("hero-logo")
  window.addEventListener('scroll', function() {
    heroLogo.style.opacity = 1 - window.pageYOffset/400+''
    heroLogo.style.top = +window.pageYOffset+'px'
    heroLogo.style.backgroundPositionY = - window.pageYOffset/2+'px'
  })
}

export { initFadeOnScroll };
