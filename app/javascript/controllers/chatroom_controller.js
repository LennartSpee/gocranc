import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatroomId: Number, userId: Number }
  static targets = ["messages"]

  connect() {
    document.addEventListener('DOMContentLoaded', () => {
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
    })

    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.dataReceived(data) }
    );
  }

  resetForm(event) {
    event.preventDefault();
    event.target.reset();
  }

  dataReceived({ userId, message }) {
    if (this.userIdValue !== userId) {
      message = message.replace('text-end', 'text-start');
      message = message.replace('primary', 'light text-dark');
    }

    this.messagesTarget.insertAdjacentHTML("beforeend", message)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
