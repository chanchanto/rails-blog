import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
  connect() {}

  toggleForm(event) {
    // stop page from reload
    event.preventDefault();
    event.stopPropagation();

    // toggle the display of comment edit form
    const formID = event.params["form"];
    const form = document.getElementById(formID);
    form.classList.toggle("d-none");

    // toggle the display of comment body
    const bodyID = event.params["body"];
    const body = document.getElementById(bodyID);
    body.classList.toggle("d-none");
  }
}
