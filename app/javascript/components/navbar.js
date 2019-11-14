const navbarToggler = () => {
  let touchEvent = 'ontouchstart' in window ? 'touchstart' : 'click';

  $(document).ready(function() {
    $('.first-button').on(touchEvent, function() {
      $('.animated-icon1').toggleClass('open');
    });

    $('.second-button').on(touchEvent, function() {
      $('.animated-icon2').toggleClass('open');
    });

    $('.third-button').on(touchEvent, function() {
      $('.animated-icon3').toggleClass('open');
    });
  });
console.log('callled')
}

export { navbarToggler };
