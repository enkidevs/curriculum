---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <form id="signup-form">
        <label>
          Username:
          <input type="text" id="username" placeholder="Enter username" required>
        </label>
        <label>
          Email:
          <input type="email" id="email" placeholder="Enter email" required>
        </label>
        <label>
          Password:
          <input type="password" id="password" placeholder="Enter password" required>
        </label>
        <button type="submit">Sign Up</button>
        <p id="error-msg" class="hidden"></p>
      </form>
    </div>
  startingCss: |
    /* Task:
      1. Validate inputs using JavaScript before submitting.
      2. If any field is empty or invalid, show an error message.
      3. If valid, highlight inputs in green.
    */

    form {
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    input {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
    }

    input.valid {
      border-color: green;
    }

    input.invalid {
      border-color: red;
    }

    #error-msg {
      color: red;
      margin-top: 8px;
    }

    .hidden {
      display: none;
    }
  startingJs: |
    // Task:
    // 1. Validate fields on form submission.
    // 2. Show an error message if fields are empty or invalid.
    // 3. Highlight valid and invalid fields.

    const form = document.getElementById('signup-form');
    const inputs = form.querySelectorAll('input');
    const errorMsg = document.getElementById('error-msg');

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      let allValid = true;

      inputs.forEach(input => {
        if (!input.checkValidity()) {
          input.classList.add('invalid');
          input.classList.remove('valid');
          allValid = false;
        } else {
          input.classList.add('valid');
          input.classList.remove('invalid');
        }
      });

      if (!allValid) {
        errorMsg.textContent = 'Please fix the highlighted fields.';
        errorMsg.classList.remove('hidden');
      } else {
        errorMsg.classList.add('hidden');
        alert('Form submitted successfully!');
      }
    });
---

# Basic Form Validation with JavaScript

---

## Content

In this exercise, you will:
- Use JavaScript to validate form fields.  
- Show helpful error messages dynamically.  
- Highlight valid and invalid inputs visually.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `input.checkValidity()` to verify built-in validation rules.
- Use `classList.add()` and `classList.remove()` to style inputs.
- Use `preventDefault()` to stop form submission if fields are invalid.
