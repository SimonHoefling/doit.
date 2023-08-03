// password_toggle_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["password", "toggle"]

  connect() {
    console.log("Password toggle controller connected...")
  }

  togglePassword() {
    console.log("PasswordVisibility Toggle klicked!!!")
    this.passwordTarget.type = this.passwordTarget.type === "password" ? "text" : "password"
    this.updateEyeIcon()
  }

  updateEyeIcon() {
    const showPassword = this.passwordTarget.type === "text"
    this.toggleTarget.classList.toggle("fa-eye", showPassword)
    this.toggleTarget.classList.toggle("fa-eye-slash", !showPassword)
  }
}
