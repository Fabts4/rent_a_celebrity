import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-review"
export default class extends Controller {

  static targets = ["reviews", "form"]

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data.inserted_item)
        this.formTarget.outerHTML = data.form
        if (data.inserted_item) {
          this.reviewsTarget.insertAdjacentHTML('afterbegin', data.inserted_item)
        }
      })
  }
}
