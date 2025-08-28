---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="faq">
        <div class="faq-item">
          <button class="faq-question">What is CSS?</button>
          <div class="faq-answer">CSS is used to style HTML elements.</div>
        </div>
        <div class="faq-item">
          <button class="faq-question">What is HTML?</button>
          <div class="faq-answer">HTML is used to structure web pages.</div>
        </div>
        <div class="faq-item">
          <button class="faq-question">What is JavaScript?</button>
          <div class="faq-answer">JavaScript adds interactivity to web pages.</div>
        </div>
      </div>
    </div>
  startingCss: |
    /* Task:
      1. Hide all answers by default.
      2. When a question is clicked, show the corresponding answer.
      3. Style the active question differently.
    */

    .faq-answer {
      display: none;
      padding: 10px;
      background-color: #f1f1f1;
      border-left: 3px solid #3498db;
    }

    .faq-question {
      background: #fff;
      border: none;
      width: 100%;
      text-align: left;
      padding: 10px;
      font-size: 16px;
      cursor: pointer;
      border-bottom: 1px solid #ccc;
    }

    .faq-question.active {
      background-color: #eaf4ff;
      font-weight: bold;
    }
  startingJs: |
    // Task:
    // 1. Select all buttons with the class .faq-question.
    // 2. On click, toggle the "active" class.
    // 3. Show or hide the next sibling (.faq-answer).

    const questions = document.querySelectorAll('.faq-question');
    questions.forEach(btn => {
      btn.addEventListener('click', () => {
        btn.classList.toggle('active');
        const answer = btn.nextElementSibling;
        answer.style.display = answer.style.display === 'block' ? 'none' : 'block';
      });
    });
---

# FAQ Toggle with JavaScript

---

## Content

In this exercise, you will:
- Use JavaScript to toggle FAQ answers.  
- Add and remove CSS classes dynamically.  
- Combine HTML, CSS, and JS for interactive UI.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Select elements with `document.querySelectorAll()`.
- Use `nextElementSibling` to find the `.faq-answer` next to the button.
- Use `classList.toggle('active')` to highlight active questions.
- Use `answer.style.display` to toggle between `'block'` and `'none'`.
