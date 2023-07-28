import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="task-dropdown"
export default class extends Controller {
  connect() {
    // Get the <select> element
    console.log("Task dropdown controller connected...");
    const selectElement = this.element;

    // Add an event listener for the 'change' event on the <select>
    selectElement.addEventListener('change', () => {
      // Get the selected value (task URL) from the dropdown
      const selectedTaskUrl = selectElement.value;

      // If the selected value is not empty, redirect to the task show page
      if (selectedTaskUrl) {
        window.location.href = selectedTaskUrl;
      }
    });
  }
}
