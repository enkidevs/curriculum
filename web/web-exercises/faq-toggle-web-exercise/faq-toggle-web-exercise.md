---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <section class="faq">
        <h1>FAQ Section</h1>
        <div class="faq-item">
          <h3 class="faq-question">What is Enki?</h3>
          <p class="faq-answer">Enki is a platform to learn programming interactively.</p>
        </div>
        <div class="faq-item">
          <h3 class="faq-question">Is this exercise mobile-friendly?</h3>
          <p class="faq-answer">Yes! It’s designed to work well on small screens.</p>
        </div>
        <div class="faq-item">
          <h3 class="faq-question">Do I need JavaScript?</h3>
          <p class="faq-answer">Not for this exercise, it works fully with HTML + CSS.</p>
        </div>
      </section>
    </div>
  startingCss: |
    /* 
    Task:
    1. Style the FAQ section to look clean and mobile-friendly.
    2. Initially hide all answers using CSS.
    3. When a user taps on a question, use the :focus-within pseudo-class to reveal its answer.
    4. Style active questions differently for better UX.
    */

    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }

    .faq {
      max-width: 500px;
      margin: 20px auto;
      padding: 10px;
    }

    .faq-item {
      margin-bottom: 10px;
      border-radius: 6px;
      border: 1px solid #ccc;
      background: #fff;
      padding: 10px;
    }

    .faq-question {
      margin: 0;
      font-size: 18px;
    }

    .faq-answer {
      display: none;
      margin-top: 8px;
      font-size: 14px;
      color: #333;
    }

    /* Show answer when parent is focused */
    .faq-item:focus-within .faq-answer {
      display: block;
    }

    /* Highlight active question */
    .faq-item:focus-within .faq-question {
      color: #0077ff;
    }

    /* Mobile-friendly spacing */
    @media (max-width: 600px) {
      .faq {
        padding: 5px;
      }

      .faq-question {
        font-size: 16px;
      }
    }
  startingJs: |
    // No JavaScript needed
---

# Mobile-Friendly FAQ Accordion

---

## Content

In this exercise, you will:
- Build a **FAQ accordion** section using **only HTML and CSS**.
- Learn how to **hide and reveal content** using the `:focus-within` pseudo-class.
- Make the FAQ fully **responsive** and optimized for mobile.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Hide answers by default:

```css
.faq-answer {
  display: none;
}
```

- Reveal answers when parent is focused:

```css
.faq-item:focus-within .faq-answer {
  display: block;
}
```

- Style active questions for better user experience.

```css
.faq-item:focus-within .faq-question {
  color: #0077ff;
  font-weight: bold;
}