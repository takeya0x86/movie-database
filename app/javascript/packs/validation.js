function handler() {
  const forms = document.getElementsByClassName('needs-validation');
  for (const form of forms) {
    form.addEventListener('submit', (event) => {
      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
        const inputs = form.getElementsByTagName('input');
        for (const input of inputs) {
          if (input.willValidate && input.validationMessage) {
            const feedback = document.createElement('div');
            feedback.classList.add('invalid-feedback');
            feedback.textContent = input.validationMessage;
            input.parentElement.insertAdjacentElement('beforeend', feedback);
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
