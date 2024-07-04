import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    var g = document.getElementById("game")
    g.classList.remove("worlds")
    g.classList.add("fights")
  }
}

