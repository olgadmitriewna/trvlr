import GMaps from 'gmaps/gmaps.js';

const initMap = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    const markers = JSON.parse(mapElement.dataset.markers);
    const marker = JSON.parse(mapElement.dataset.marker);
    map.addMarkers(markers);
    mapElement.style.height = "900px"
    mapElement.style.width = "900px"
    console.log(markers.length)
    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
    } else {
      // map.fitLatLngBounds(markers);
      if (marker) {
        map.setCenter(marker.lat, marker.lng);
      } else {
        map.setCenter(markers[0].lat, markers[0].lng);
      }
      map.setZoom(4)
    }
  }
  // Set initial size of the map
}

export { initMap };
