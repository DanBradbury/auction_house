import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("hello shop")
    var g = document.getElementById("game")
    g.classList = []
    g.classList.add("game", "shop")

  }
}

