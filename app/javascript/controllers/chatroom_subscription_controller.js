import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]
  static values = { chatroomId: Number, currentUserId: Number }


  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.insertMessageAndScrollDown(data.message, data.sender_id) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
    this.scrollMessagesToBottom(); // Scroll to the bottom of the chatroom when entering the chatroom
  }

  insertMessageAndScrollDown(message, sender_id) {
    // Logic to know if the sender is the current_user
    const currentUserIsSender = this.currentUserIdValue === sender_id

    // Creating the whole message from the `message` string
    const messageElement = this.buildMessageElement(currentUserIsSender, message)

    // Inserting the `message` in the DOM
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.scrollMessagesToBottom() // Scroll to the bottom of the chatroom when a new message is received
  }


  scrollMessagesToBottom() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight; // Function to scroll to the bottom of the chatroom
  }
  // jodfa
  buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.justifyClass(currentUserIsSender)}">
        <div class="${this.userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }
  // lfdshfd
  resetForm(event) {
    event.target.reset() // Reset the form once the message is sent
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe() // Unsubscribe from the channel when leaving the chatroom
  }

}
