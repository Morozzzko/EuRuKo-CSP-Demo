import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-navbar"
export default class extends Controller {
  static targets = [
    'menu', 'buttonClosed', 'buttonOpen',
  ]
  connect() {
    if (this.element.dataset.expanded) {
      this.openNavbar()
    } else {
      this.closeNavbar()
    }
  }

  toggle() { 
    if (this.element.dataset.expanded) {
      this.closeNavbar()
    } else {
      this.openNavbar()
    }
  }

  openNavbar() {
    this.element.dataset.expanded = true
    this.buttonOpenTarget.classList.remove('block')
    this.buttonOpenTarget.classList.add('hidden')
    this.buttonClosedTarget.classList.remove('hidden')
    this.buttonClosedTarget.classList.add('block')
    this.menuTarget.classList.remove('hidden')
  }

  closeNavbar() {
    delete this.element.dataset.expanded
    this.buttonOpenTarget.classList.add('block')
    this.buttonOpenTarget.classList.remove('hidden')
    this.buttonClosedTarget.classList.add('hidden')
    this.buttonClosedTarget.classList.remove('block')
    this.menuTarget.classList.add('hidden')
  }
}
