import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="custom-form"
export default class extends Controller {
  static targets = ["submit"]

  connect() {
  }

  submit() {
    this.submitTarget.click()
  }
}
