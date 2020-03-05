const initFadeOnScroll = () => {
  const heroLogo = document.getElementById('hero-logo');


  if (!heroLogo) {
    return;
  }


  window.addEventListener('scroll', () => {
    heroLogo.style.opacity = 1 - window.pageYOffset/400 + '';
    heroLogo.style.top = window.pageYOffset + 'px';
    heroLogo.style.backgroundPositionY = - window.pageYOffset / 2 + 'px';
  })
}

const fadeHero = () => {
  const scrollLimit = 600;
  const homeBody = document.querySelector('.events_index');
  const bodyContainer = document.querySelector('.body-container');

  if (!homeBody) {
    return;
  }

  const setBodyContainerBg = (scroll) => {
    const bgOpacity = scroll  / scrollLimit;
    bodyContainer.style.backgroundColor = `rgba(56, 6, 58, ${bgOpacity})`;
  }

  setBodyContainerBg(window.scrollY);


  window.addEventListener('scroll', () => {
    if (window.scrollY > scrollLimit) {
      return;
    }

    setBodyContainerBg(window.scrollY);
  });
}

export { fadeHero, initFadeOnScroll };
