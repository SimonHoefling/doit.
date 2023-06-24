import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"];

  connect() {
    console.log("Hello from image grid modal controller");
  }

  openModal(event) {
    const clickedImage = event.currentTarget.querySelector("img");
    const imageUrl = clickedImage.getAttribute("data-src");

    if (!imageUrl) return;

    const modal = document.createElement("div");
    modal.classList.add("modal");

    const modalImage = document.createElement("img");
    modalImage.src = imageUrl;
    modal.appendChild(modalImage);

    modal.addEventListener("click", () => {
      modal.remove();
    });

    document.body.appendChild(modal);
  }
}
