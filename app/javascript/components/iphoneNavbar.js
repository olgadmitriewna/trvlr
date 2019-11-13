const burgerMenu = document.querySelector(".navbar-toggler");
var iOS = !!navigator.platform && /iPad|iPhone|iPod/.test(navigator.platform);
const banner = document.querySelector(".banner")

const toggleIphoneNavbar = () => {
  if (burgerMenu && iOS) {
    burgerMenu.addEventListener('click', (event) => {
      banner.classList.toggle("iphone")
    })
  }
}
console.log('called iphone')
export { toggleIphoneNavbar }
