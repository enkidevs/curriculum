---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    header](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header){website}
  - >-
    [MDN docs for
    footer](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Replace the top container <div> with a <header> element.
    2. Wrap the article's heading elements (h2 and h3) and the first paragraph inside an <header> element.
    3. Replace the bottom container <div> with a <footer> element.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
      <div class="container">
        <h1>Logo</h1>
      </div>
      <article>
        <h2>First order 50% off!!</h2>
        <h3>Order pizza now</h3>
        <p>Order two pizza's get 2L Pepsi free!</p>
        <p>We also have: chicken, pineapple, ghost peppers, spinach, and more...</p>
      </article>
      <div class="container">
        <p>Copyright 20xx</p>
      </div>
    </div>
  startingCss: |
    .inner-demo {
      border: 1px solid #000;
    }

    .inner-demo, 
    .your-code {
      margin: 0;
      padding: 0;
    }

    header, footer {
      background-color: #3E94EC;
    }

    header h1 {
      padding: 20px;
      margin: 0;
      color: #fff;
    }

    article {
      width: 400px;
      margin: auto;
    }

    article header {
      padding: 20px;
      margin: 20px;
      border-radius: 12px;
      border: 4px solid #3E94EC;
      background-color: #fff;
    }

    article header h2, 
    article header h3, 
    article header p,
    footer p {
      text-align: center;
    }

    footer p {
      padding: 14px 0;
      color: #fff;
      margin: 0;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML semantics 1

---

## Content

In this exercise, you will use **semantic elements** to improve the structure of the HTML.  

1. Add a `<header>` element at the top for the site logo.  
2. Wrap the article headings and promotional message inside a second `<header>`.  
3. Add a `<footer>` at the bottom for the copyright.  

In the end it should look like this:  
![html-semantics-1-exercise-finished](https://img.enkipro.com/a054e95e3782d406ccfac5c76cc5e8f7.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<header>` is typically used at the top of a page or a section.  
- `<footer>` is used at the bottom for credits, legal info, etc.  
- Example:
```html
  <header>
    <h1>Logo</h1>
  </header>
```