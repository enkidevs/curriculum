---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="accordion">
        <div class="accordion-item">
          <button class="accordion-header">Section 1</button>
          <div class="accordion-content">
            <p>This is the content for section 1.</p>
          </div>
        </div>
        <div class="accordion-item">
          <button class="accordion-header">Section 2</button>
          <div class="accordion-content">
            <p>This is the content for section 2.</p>
          </div>
        </div>
        <div class="accordion-item">
          <button class="accordion-header">Section 3</button>
          <div class="accordion-content">
            <p>This is the content for section 3.</p>
          </div>
        </div>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Style the accordion headers and contents.
    2. Hide all accordion contents by default.
    3. Highlight the active header.
    */

    .accordion {
      width: 100%;
      max-width: 400px;
      margin: auto;
    }

    .accordion-header {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      text-align: left;
      background-color: #3498db;
      color: white;
      border: none;
      outline: none;
      cursor: pointer;
    }

    .accordion-header.active {
      background-color: #2980b9;
    }

    .accordion-content {
      display: none;
      padding: 10px;
      background-color: #f4f4f4;
      border: 1px solid #ddd;
    }
  startingJs: |
    // Task:
    // 1. Select all accordion headers.
    // 2. Add click events to toggle the "active" class on the header.
    // 3. Show or hide the related accordion content.

    const headers = document.querySelectorAll('.accordion-header');
    headers.forEach(header => {
      header.addEventListener('click', () => {
        const content = header.nextElementSibling;

        // Toggle active class for header
        header.classList.toggle('active');

        // Toggle content visibility
        if (content.style.display === 'block') {
          content.style.display = 'none';
        } else {
          content.style.display = 'block';
        }
      });
    });
---

# Accordion Menu with JavaScript

---

## Content

In this exercise, you will:
- Create a collapsible accordion menu.
- Toggle active states using JavaScript.
- Improve the UI with CSS for better mobile interaction.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Hide contents by default using `display: none;`.  
- Use `nextElementSibling` to find the content after the header.  
- Add or remove classes using `classList.toggle('active')`.  
- Always test on mobile by tapping the headers.
