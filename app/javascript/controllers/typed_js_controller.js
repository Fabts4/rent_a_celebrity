import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Vivez avec vos célébrités préférées le temps d'une soirée inoubliable"],
      typeSpeed: 50,
      
    })
  }
}