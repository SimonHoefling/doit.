import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("HideShowPassword controller connected...");

    const passwordInputs = document.querySelectorAll('input[type="password"]');
    const passwordVisibilityToggle = document.querySelector('#password_visibility');

    passwordVisibilityToggle.addEventListener('change', function() {
      const passwordType = this.checked ? 'text' : 'password';
      passwordInputs.forEach(function(input) {
        input.type = passwordType;
      });
    });
  }
}
