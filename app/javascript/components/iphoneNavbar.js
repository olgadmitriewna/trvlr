const burgerMenu = document.querySelector(".navbar-toggler");
var iOS = !!navigator.platform && /iPad|iPhone|iPod/i.test(navigator.platform);
var isSafari = /Safari/.test(navigator.userAgent) && /Apple Computer/.test(navigator.vendor);
const banner = document.querySelector(".banner")
const countryBanner = document.querySelector(".country-banner")
const nav = document.querySelector(".navbar")

const toggleIphoneNavbar = () => {
  if (burgerMenu && (iOS || isSafari) && banner) {
    nav.style.padding = "30px";
    burgerMenu.addEventListener('click', (event) => {
      banner.classList.toggle("iphone")
    })
  } else if (countryBanner && (iOS || isSafari) && burgerMenu) {
    nav.style.padding = "30px";
    burgerMenu.addEventListener('click', (event) => {
      countryBanner.classList.toggle("iphone")
    })
  }
}
export { toggleIphoneNavbar }
