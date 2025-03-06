import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["filterBar"]

  connect() {
    console.log("hello from filter controller")
    this.filterBarTarget.style.display = "none";
  }

  toggle() {
    console.log("hello from toggle action")
    if (this.filterBarTarget.style.display === "none") {
      this.filterBarTarget.style.display = "block";
    } else {
      this.filterBarTarget.style.display = "none";
    }
  }
}
