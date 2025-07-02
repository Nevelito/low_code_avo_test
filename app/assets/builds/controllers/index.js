// app/javascript/controllers/application.js
import { Application } from "@hotwired/stimulus";
var application = Application.start();
application.debug = false;
window.Stimulus = application;

// app/javascript/controllers/hello_controller.js
import { Controller } from "@hotwired/stimulus";
var hello_controller_default = class extends Controller {
  connect() {
    this.element.textContent = "Hello World!";
  }
};

// app/javascript/controllers/index.js
application.register("hello", hello_controller_default);
//# sourceMappingURL=/assets/controllers/index.js.map
