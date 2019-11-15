const profileBanner = document.querySelector('.profile-banner');
const burgerMenu = document.querySelector(".navbar-toggler");

const toggleProfileBanner = () => {
  burgerMenu.addEventListener('click', () => {
    if (profileBanner) {
      profileBanner.classList.toggle('big-height')
    }
  })
}

export { toggleProfileBanner };
