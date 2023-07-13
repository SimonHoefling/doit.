import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
    this.scrollMessagesToBottom(); // Scroll to the bottom of the chatroom when entering the chatroom
  }

  insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.scrollMessagesToBottom(); // Scroll to the bottom of the chatroom when a new message is received
  }

  scrollMessagesToBottom() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight; // Function to scroll to the bottom of the chatroom
  }

  resetForm(event) {
    event.target.reset() // Reset the form once the message is sent
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe() // Unsubscribe from the channel when leaving the chatroom
  }

}
