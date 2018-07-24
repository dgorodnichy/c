// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import axios from 'axios'

export default class extends Controller {
  static targets = [ "output", "name", 'submit' ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  greet() {
    var context = this

    axios.get('search', {
      params: { query: this.nameTarget.value }
    }).then(function (response) {
      context.outputTarget.textContent = JSON.stringify(response.data)
    })
  }
}
