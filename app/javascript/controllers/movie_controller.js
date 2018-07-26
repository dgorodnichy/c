
import { Controller } from "stimulus"
import axios from 'axios'

export default class extends Controller {
  static targets = [ "output", "name", 'submit', 'spinner' ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  greet() {
    var context = this

    context.spinnerTarget.style.display = 'block';

    axios.get('search', {
      params: { query: this.nameTarget.value }
    }).then(function (response) {
      context.outputTarget.innerHTML = response.data
      context.spinnerTarget.style.display = 'none';
    })
  }
}
