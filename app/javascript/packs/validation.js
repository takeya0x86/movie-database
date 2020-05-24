function handler() {
  const forms = document.getElementsByClassName('needs-validation');
  for (const form of forms) {
    form.addEventListener('submit', function(event) {
      if (form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
        inputs = form.getElementsByTagName('input');
        for (const input of inputs) {
          if (input.willValidate && input.id) {
            const feedback = form.querySelector(`#${input.id} ~ .invalid-feedback`);
            if (input.validationMessage && feedback) {
              feedback.textContent = input.validationMessage;
            }
          }
        }
      }
      form.classList.add('was-validated');
    });
  }
}

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', handler);
} else {
  handler();
}
