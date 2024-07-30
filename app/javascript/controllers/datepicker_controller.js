import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()
// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = [ "startTime", "endTime" ]
  connect() {
    console.log("working");
    flatpickr(this.startTimeTarget, {})
    flatpickr(this.endTimeTarget, {})
  }
}

