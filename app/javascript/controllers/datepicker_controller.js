// app/javascript/controllers/datepicker_controller.js
import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// with `const` variables reassignment is forbidden


// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      onChange: function(selectedDates, dateStr, instance) {
        // retrieve start date
        let start_date = document.querySelector("#booking_start_date").value; // CSS id selector
        // retrieve end date
        let end_date = document.querySelector("#booking_end_date").value; // CSS id selector
        // if they're both provided,compute the difference in days
        // console.log(end_date);
        if (start_date && end_date) {
          start_date = new Date(start_date);
          end_date = new Date(end_date);
          const diffTime = Math.abs(end_date - start_date);
          const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24 ));
          const submitButton = document.getElementById("reservation");
          const dailyRate = document.querySelector("#everyday_rate").innerText.split("$")[1];
          console.log(dailyRate);
          submitButton.value = `Reserve for $${ parseInt(dailyRate) * diffDays}`;
          console.log(submitButton);
        }

        const duration = Number(end_date) - Number(start_date)
        // console.log(duration);
        // thereafter, multiply the price by the number of days

        // you will also occasionally see this, which does the same thing:
        const price = document.getElementById("artwork.price"); // no need for a `#`
        const result = duration * price
        // result (display total price on screen)
    }
    })
  }
}
