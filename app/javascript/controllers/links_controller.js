import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="links"
export default class extends Controller {
  connect() {
    console.log("connected");
  }

  click() {
    const link = JSON.parse(this.element.dataset.link);
    ahoy.track("Clicked Link", { link });
  }
}
