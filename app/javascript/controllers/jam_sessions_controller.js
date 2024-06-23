import { Controller } from "stimulus";
import "tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min";

export default class extends Controller {
  connect() {
    // Initialize DateTime Picker
    $(this.element).find('.datetimepicker-input').datetimepicker({
      format: 'YYYY-MM-DD HH:mm:ss',  // Adjust format as needed
    });
  }
}
