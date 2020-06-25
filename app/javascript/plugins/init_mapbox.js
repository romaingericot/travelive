import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/fguilloucamargo/ckbt4oswm0jqq1jnrnacxwpan',
      center: [0, 15],
      zoom: 0.9
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker( {color: '#CC3363', scale: 0.7})
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
  }
};

export { initMapbox };
