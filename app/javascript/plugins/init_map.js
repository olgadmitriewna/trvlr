import GMaps from 'gmaps/gmaps.js';

let map;

const initMap = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log()
    const marker = JSON.parse(mapElement.dataset.marker);
    mapElement.style.height = "900px"
    mapElement.style.width = "900px"
    if (markers.length === 0 || markers[0].lat !== null) {
      map.setZoom(2);
      map.addMarkers(markers)

    } else if (markers.length === 1) {
      console.log("else if")
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
      map.addMarkers(markers)
    } else {
      console.log("else")
      // map.fitLatLngBounds(markers);
      if (marker) {
        map.setCenter(marker.lat, marker.lng);
        map.addMarkers(marker);
        map.addMarkers(markers);
      } else {
        map.setCenter(markers[0].lat, markers[0].lng);
        const gMapMarkers = markers.map(marker => {
          var marker = new google.maps.Marker({
            position: new google.maps.LatLng(marker.lat, marker.lng),
            map: map,
            icon: marker.user_photo
          })
          return marker;
        })
        map.addMarkers(gMapMarkers);
        map.setZoom(2)
      }
      map.setZoom(4)
    }
  }
}

export { initMap };
