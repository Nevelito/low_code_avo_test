// app/javascript/controllers/application.js
import { Application } from "@hotwired/stimulus";
var application = Application.start();
application.debug = false;
window.Stimulus = application;
export {
  application
};
//# sourceMappingURL=/assets/controllers/application.js.map
