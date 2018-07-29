
import { Controller } from "stimulus"
import axios from 'axios'

export default class extends Controller {
  static targets = [ "output", "name", 'submit', 'spinner' ]

  connect() {
    console.log('Hello, Stimulus!')
  }

  greet() {
    event.preventDefault()
    var context = this

    context.spinnerTarget.classList.remove("hide");
    context.outputTarget.classList.add("hide");

    axios.get('/', {
      params: { query: this.nameTarget.value }
    }).then(function (response) {
      context.outputTarget.innerHTML = response.data
      context.spinnerTarget.classList.add("hide");
      context.outputTarget.classList.remove("hide");
    })
  }
}
