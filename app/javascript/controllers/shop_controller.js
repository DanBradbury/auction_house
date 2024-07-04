import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["itemInfo", "itemName", "itemDescription", "itemPrice", "buyList"]

  connect() {
    console.log("hello shop")
    var g = document.getElementById("game")
    g.classList = []
    g.classList.add("game", "shop")
  }

  mouseover(e) {
    var t = this.itemInfoTarget
    t.style.top = `${e.pageY}px`
    t.style.left = `${e.pageX+35}px`
    t.style.display = "block"

    // load the details from the selection?
    this.itemNameTarget.innerHTML = "Test Item"
    this.itemDescriptionTarget.innerHTML = "Big thing go boom boom with the boom boom"
    this.itemPriceTarget.innerHTML = "10"
  }

  mouseout() {
    this.itemInfoTarget.style.display = "none"
  }

  addItem() {
    this.buyListTarget.innerHTML += "<li>Test Item</li>"

  }
}

