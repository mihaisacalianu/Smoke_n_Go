import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["displayedPrice", "startDate", "endDate", "displayedDays"];

  connect() {
    const price = this.element.dataset.bbqPrice;

    if ((this.element.dataset.bookingStart === "") && (this.element.dataset.bookingEnd === "")) {
      this.displayedPriceTarget.innerHTML = `-`
      this.displayedDaysTarget.innerHTML = `-`
    } else {
      const start_date = new Date(this.element.dataset.bookingStart)
      const end_date = new Date(this.element.dataset.bookingEnd)
      const differenceInTime = end_date - start_date
      const differenceInDays = differenceInTime / (1000 * 60 * 60 * 24);
      this.initalDetails(price, differenceInDays)
    }
  }

  initalDetails(price, differenceInDays) {
    const totalPrice = price * (differenceInDays + 1)
    this.displayedPriceTarget.innerHTML = `£${parseFloat(totalPrice).toFixed(2)}`
    this.displayedDaysTarget.innerHTML = `${differenceInDays + 1}`
  }

  updateDetails(event) {
    const price = this.element.dataset.bbqPrice

    if ((this.startDateTarget.value === "") || (this.endDateTarget.value === "")) {
      this.displayedPriceTarget.innerHTML = `-`
      this.displayedDaysTarget.innerHTML = `-`
    } else {
      const start_date = new Date(this.startDateTarget.value)
      const end_date = new Date(this.endDateTarget.value)

      const differenceInTime = end_date - start_date;
      const differenceInDays = differenceInTime / (1000 * 60 * 60 * 24);

      const totalPrice = price * (differenceInDays + 1)
      this.displayedPriceTarget.innerHTML = `£${parseFloat(totalPrice).toFixed(2)}`
      this.displayedDaysTarget.innerHTML = `${differenceInDays + 1}`
    }
  }
}
