import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel-form"
export default class extends Controller {
  static targets = [ "slide" ];

  connect() {
    console.log("CarouselFormController connected...");
  }

  initialize() {
    this.currentSlideIndex = 0;
  }

  // The next 2 functions are for swiping on mobile
  startSwipe(event) {
    this.startX = event.changedTouches[0].clientX;
  }

  endSwipe(event) {
    this.endX = event.changedTouches[0].clientX;
    let diffX = this.startX - this.endX;

    if (Math.abs(diffX) > 50) { // Threshold for swipe
      if (diffX > 0) {
        // swipe left, go to next slide
        if (this.currentSlideIndex < this.slideTargets.length - 1) {
          this.showSlide(this.currentSlideIndex + 1);
        }
      } else {
        // swipe right, go to previous slide
        if (this.currentSlideIndex > 0) {
          this.showSlide(this.currentSlideIndex - 1);
        }
      }
    }
  }

  goToSlide(event) {
    let targetSlideIndex = Number(event.target.dataset.slide);
    this.showSlide(targetSlideIndex);
  }

  showSlide(index) {
    this.slideTargets.forEach((slide, i) => {
      slide.classList.toggle('active', i === index);
    });
    this.updateIndicators(index);
    this.currentSlideIndex = index;
  }

  updateIndicators(index) {
    let indicators = document.querySelectorAll('.indicator');
    indicators.forEach((indicator, i) => {
      indicator.classList.toggle('active', i === index);
    });
  }
}
