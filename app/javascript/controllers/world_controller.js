import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="world"
export default class extends Controller {

  connect() {
    document.getElementById("game").classList.add("worlds")
  }
}
