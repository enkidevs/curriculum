---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="container">
        <h1>Welcome</h1>
        <p>Let's add some visual style!</p>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Set a background color for the entire page.
    2. Add a background image to the .container.
    3. Make the image cover the entire container area.
    4. Apply a linear gradient overlay on top of the image.
    */

    body {
      margin: 0;
      font-family: sans-serif;
    }

    .container {
      padding: 40px;
      color: white;
      text-align: center;
    }

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Background Images and Gradients

---

## Content

In this exercise, you will:
- Set a background color and image.
- Use `background-size: cover` to scale images.
- Apply a gradient overlay to improve readability.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Background color:  

```css
body { background-color: #333; }
```

- Background image:

```css
.container {
  background-image: url('https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg');
  background-size: cover;
}
```

- Gradient overlay:

```css
.container {
  background-image: linear-gradient(
    rgba(0,0,0,0.5), 
    rgba(0,0,0,0.5)
  ), url('https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg');
}
```