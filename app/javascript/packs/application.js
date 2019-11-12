import "bootstrap";
import { initMap } from '../plugins/init_map';
import { navbarToggler } from '../components/navbar';
initMap()

document.addEventListener('DOMContentLoaded', () => {
  navigator.geolocation.getCurrentPosition((position) => {
    const latitudeVisits = document.querySelector('#visits_latitude');
    const longitudeVisits = document.querySelector('#visits_longitude');

    if (latitudeVisits && longitudeVisits) {
      latitudeVisits.value = position.coords.latitude;
      longitudeVisits.value = position.coords.longitude;
    }
  })
})

navbarToggler()

