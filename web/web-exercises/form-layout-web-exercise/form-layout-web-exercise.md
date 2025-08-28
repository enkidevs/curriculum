---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <form>
        <label for="name">Name:</label>
        <input id="name" type="text" placeholder="Enter your name" required>

        <label for="email">Email:</label>
        <input id="email" type="email" placeholder="Enter your email" required>

        <label for="message">Message:</label>
        <textarea id="message" placeholder="Your message here"></textarea>

        <button type="submit">Send</button>
      </form>
    </div>
  startingCss: |
    /* 
    Task:
    1. Center the form on the page.
    2. Make labels block-level and bold.
    3. Add spacing between inputs and labels.
    4. Style the submit button with a custom color and hover effect.
    */

    body {
      /* Center the form using flexbox */
    }

    form {
      /* Give form a max-width and add padding */
    }

    label {
      /* Make labels bold and block-level */
    }

    input, textarea, button {
      /* Set a uniform width and margin */
    }

    button {
      /* Add background, border, and hover transition */
    }
  startingJs: |
    // No JavaScript needed
---

# Creating a Styled Form Layout

---

## Content

In this exercise, you will:
- Build a simple contact form structure in HTML.
- Use CSS to center it and style its elements.
- Add a hover effect to the submit button for interactivity.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `display: flex; justify-content: center; align-items: center;` on `body` for centering.  
- Apply `max-width: 400px; margin: auto;` on `form`.  
- Labels: `display: block; font-weight: bold;`.  
- Button hover example:

```css
button {
  background: #4caf50;
  color: white;
  border: none;
  padding: 10px;
  cursor: pointer;
  transition: background 0.3s ease;
}

button:hover {
  background: #45a049;
}
```