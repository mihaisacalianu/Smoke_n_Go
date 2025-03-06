import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["filterBar", "searchDates", "reset", "startDate", "endDate"]

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

  submit() {
    this.formTarget.submit();
  }

  reset(event) {
    event.preventDefault();

    const startDate = this.startDateTarget.value;
    const endDate = this.endDateTarget.value;
    this.resetTarget.reset();
    this.startDateTarget.value = startDate;
    this.endDateTarget.value = endDate;
    this.resetTarget.submit();
  }
}
