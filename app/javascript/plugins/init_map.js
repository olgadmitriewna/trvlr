import GMaps from 'gmaps/gmaps.js';
let map;
const initMap = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    const markers = JSON.parse(mapElement.dataset.markers);
    const marker = JSON.parse(mapElement.dataset.marker);
    mapElement.style.height = "900px"
    mapElement.style.width = "900px"
    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
      map.addMarkers(markers)
    } else {
      // map.fitLatLngBounds(markers);
      if (marker) {
        map.setCenter(marker.lat, marker.lng);
        map.addMarkers(marker);
        map.addMarkers(markers);
        console.log('here')
      } else {
        map.setCenter(markers[0].lat, markers[0].lng);
        const gMapMarkers = markers.map(marker => {
          var marker = new google.maps.Marker({
            position: new google.maps.LatLng(marker.lat, marker.lng),
            map: map,
            icon: 'assets/ic_menu_36px.svg'
          })
          return marker;
        })
        map.addMarkers(gMapMarkers)
      }
      map.setZoom(4)
    }
  }
  // Set initial size of the map
}

export { initMap };
