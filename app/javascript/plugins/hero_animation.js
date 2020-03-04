import anime from 'animejs';
import Rails from '@rails/ujs';

console.log('hello hero animation')
const initHeroAnimation = () => {
  const hero = document.querySelector(".hero-container")
  const plus = document.querySelector(".hero-plus")
  const smallArrow = document.querySelector(".small_arrow")
  // const bigArrow = document.querySelector(".big_arrow")

  if (hero) {
    const logoTimeline = anime.timeline({
      easing : 'easeInOutExpo',
      loop: true,
      direction: 'alternate',
      duration: '2000'
    });

    logoTimeline
    .add({
      targets: plus,
      duration: '500'
    })

    .add({
      targets: '.square',
      duration: '1000',
      easing: 'spring(1, 80, 10, 0)',
      rotate: '180'
    })

    .add({
      targets: plus,
      duration: '1000',
      // direction: 'alternate',
      // easing : 'easeInOutExpo',
      // loop: true,
      // easing: 'spring(1, 80, 10, 0)',
      fill: '#68E184'
    }, '-=2000')

    .add({
      targets: smallArrow,
      translateY: '100',
      easing: 'spring(1, 80, 10, 0)',
      stroke: '#FFF',
      duration: '1000'
    }, '-=1600')

    .add({
      targets: plus,
      duration: '500'
    }, '-=0');

    // (document).scroll(function() {
    //    if($(window).scrollTop() > 50){
    //     $("#header").hide();
    //     $("#header2").show();

    //    }else if($(window).scrollTop() < 50){

    //     $("#headerline").css("background","blue");
    //     $("#header2").hide();

  } else {
    console.log('you fail')
    return
  }
};

export { initHeroAnimation };
