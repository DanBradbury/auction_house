import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = [ "messages", "input" ]

  connect() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight
  }

  submitName() {
    console.log("oo")
  }

  sendMessage() {
    console.log("sendMessage")
    setTimeout(function() { this.clearInput() }.bind(this), 100)

  }

  clearInput() {
    this.inputTarget.value = ""
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight
  }
}
