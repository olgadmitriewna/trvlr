import "bootstrap";
import { initMap } from '../plugins/init_map';

initMap()
document.addEventListener('DOMContentLoaded', () => {
  navigator.geolocation.getCurrentPosition((position) => {
    const latitudeVisits = document.querySelector('#visits_latitude');
    const longitudeVisits = document.querySelector('#visits_longitude');

    latitudeVisits.value = position.coords.latitude;
    longitudeVisits.value = position.coords.longitude;
  })
})
