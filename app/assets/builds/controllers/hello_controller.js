// app/javascript/controllers/hello_controller.js
import { Controller } from "@hotwired/stimulus";
var hello_controller_default = class extends Controller {
  connect() {
    this.element.textContent = "Hello World!";
  }
};
export {
  hello_controller_default as default
};
//# sourceMappingURL=/assets/controllers/hello_controller.js.map
