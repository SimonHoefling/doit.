import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("Map controller connected...")
    mapboxgl.accessToken = this.apiKeyValue

    const marker = this.markersValue[0]; // Since we only have one marker

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [marker.lng, marker.lat], // Set initial center to marker's location
      zoom: 12 // Adjust the zoom level to your needs
    });

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(this.map);
  }
}
