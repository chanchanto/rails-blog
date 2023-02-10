import { Controller } from "@hotwired/stimulus"
import TomSelect from 'tom-select'

// Connects to data-controller="select"
export default class extends Controller {
  connect() {
    new TomSelect(this.element, {
      plugins: [
        'remove_button',
        'dropdown_input',
        'restore_on_backspace'
      ],
      placeholder: 'Search by tags',
      valueField: 'name',
      searchField: 'name',
    })
  }
}
