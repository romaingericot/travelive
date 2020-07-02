import mapboxgl from 'mapbox-gl';

const initMapboxLive = () => {
  const mapElement = document.getElementById('map-live');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.longitude, marker.latitude ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 12, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-live',
      style: 'mapbox://styles/mapbox/streets-v10',
    });

    const checkpointFetch = () => {
      fetch(`/guide/tours/${mapElement.dataset.tour}/checkpoints`)
      .then(response => response.json())
      .then((data) => {
        data.forEach((checkpoint) => {
          console.log('inside')
          const popup = new mapboxgl.Popup().setHTML(checkpoint.infoWindow);
          if(checkpoint.progress === 0){
            new mapboxgl.Marker({color: '#CC3363', scale: 0.7})
              .setLngLat([checkpoint.longitude, checkpoint.latitude ])
              .setPopup(popup)
              .addTo(map);
          } else {
            new mapboxgl.Marker({color: 'grey', scale: 0.7})
              .setLngLat([checkpoint.longitude, checkpoint.latitude ])
              .setPopup(popup)
              .addTo(map);
          };
        });
        fitMapToMarkers(map, data);
      });
    };

    setInterval(checkpointFetch, 1000)

    window.setTimeout(() => {
      map.resize()
    }, 1000)
  };
};

export { initMapboxLive };
