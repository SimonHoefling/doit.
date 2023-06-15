import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hide-show-password"
export default class extends Controller {
  connect() {
    console.log("Hello from the HideShowPassword controller!")

    document.addEventListener('DOMContentLoaded', function() {
      const passwordInputs = document.querySelectorAll('input[type="password"]');
      const passwordVisibilityToggle = document.querySelector('#password_visibility');

      passwordVisibilityToggle.addEventListener('change', function() {
        const passwordType = this.checked ? 'text' : 'password';
        passwordInputs.forEach(function(input) {
          input.type = passwordType;
        });
      });
    });
  }
}
