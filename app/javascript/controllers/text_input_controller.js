import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="text-input"
export default class extends Controller {
  connect() {
    console.log("CONNECTED")
  }

  active() {
    console.log("WOOO")
    console.log(this)
    console.log(this.element)
    this.element.classList.add("active")
  }

  inactive() {
    this.element.classList.remove("active")
  }
}
