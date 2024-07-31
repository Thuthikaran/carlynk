import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["startTime", "endTime", "daysBetween", "totalPrice"];
  static values = { pricePerDay: Number };

  connect() {
    console.log("Datepicker controller connected");

    
    this.startPicker = flatpickr(this.startTimeTarget, {
      mode: "single",
      onChange: () => this.updatePrice()
    });

 
    this.endPicker = flatpickr(this.endTimeTarget, {
      mode: "single",
      onChange: () => this.updatePrice()
    });

  
    this.pricePerDayValue = parseFloat(this.element.dataset.datepickerPricePerDayValue);
  }

  updatePrice() {
    const startDate = this.startPicker.selectedDates[0];
    const endDate = this.endPicker.selectedDates[0];

    if (startDate && endDate) {
      const daysBetween = Math.round((endDate - startDate) / (1000 * 60 * 60 * 24));
      const totalPrice = daysBetween * this.pricePerDayValue;
      this.daysBetweenTarget.textContent = `For: ${daysBetween} days`;
      this.totalPriceTarget.textContent = `Total Price: €${totalPrice.toFixed(2)}`; 
    }
  }
}
