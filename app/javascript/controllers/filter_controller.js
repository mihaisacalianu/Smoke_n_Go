import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["filterBar", "searchDates", "reset", "startDate", "endDate", "removeSidebar"]

  connect() {
    this.filterBarTarget.style.display = "none";
  }

  toggle() {
    if (this.filterBarTarget.style.display === "none") {
      this.filterBarTarget.style.display = "block";
    } else {
      this.filterBarTarget.style.display = "none";
    }
  }

  // close() {
  //   if (this.filterBarTarget.style.display === "block") {
  //     this.filterBarTarget.style.display = "none";
  // }

  submit() {
    this.formTarget.submit();
  }

  reset(event) {
    // event.preventDefault();

    const startDate = this.startDateTarget.value;
    const endDate = this.endDateTarget.value;

    // this.resetTarget.querySelectorAll("select, input").forEach(input => {
    //   if (input.type === "checkbox") {
    //     input.checked = false;
    //   } else {
    //     input.value = "";
    //   }
    // });

    // Restore start_date and end_date fields (preserve booking dates)
    this.startDateTarget.value = startDate;
    this.endDateTarget.value = endDate;

  }

}
