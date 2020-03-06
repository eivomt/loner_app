const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.menu-index');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight - 250) {
        navbar.classList.add('menu');
      } else {
        navbar.classList.remove('menu');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
