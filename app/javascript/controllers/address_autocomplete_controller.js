import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = { apiKey: String }
  static targets = ["address"]

  connect() {
    console.log("Address Autocomplete Controller connect...")
    console.log("API Key: ", this.apiKeyValue);
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    console.log(this.geocoder);
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => {
      console.log("Result event: ", event); // Debug line
      this.setInputValue(event)
    })
    this.geocoder.on("clear", () => {
      console.log("Clear event triggered"); // Debug line
      this.clearInputValue()
    })
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  clearInputValue() {
    this.addressTarget.value = ""
  }
}
