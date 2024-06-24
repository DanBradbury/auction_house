import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="race-selector"

var selectionValue = 0

export default class extends Controller {
  static values = {
    opts: Array,
    current: String
  }
  static targets = [ "selection", "hiddenField" ]

  connect() {
    console.log(this.optsValue)
    console.log(this.currentValue)
    selectionValue = this.optsValue.indexOf(this.currentValue)
  }

  moveLeft() {
    if (selectionValue === 0) {
      selectionValue = this.optsValue.length - 1
    } else {
      selectionValue -= 1
    }
    console.log("moving left")
    this.redrawSelection()
  }
  moveRight() {
    if (selectionValue === this.optsValue.length - 1) {
      selectionValue = 0
    } else {
      selectionValue += 1
    }
    console.log("moving right")
    this.redrawSelection()
  }

  redrawSelection() {
    this.selectionTarget.innerHTML = this.optsValue[selectionValue]
    console.log(this.targets)
    this.hiddenFieldTarget.value = this.optsValue[selectionValue]
  }
}
