import flatpickr from "flatpickr";
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    flatpickr(".datepicker", {});
  }
}
