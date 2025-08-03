---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    nav](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a <nav> element.
    2. Inside the <nav>, add 5 links (<a>) that navigate to the following:
       - /page1/
       - /page2/
       - /page3/
       - /page14/
       - /page15/
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    nav {
      width: 60%;
      padding-left: .5rem;
      margin-left: .5rem;
      border: thin grey solid;
      margin: 1em;
      padding: 1em;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML semantics 4

---

## Content

In this exercise, you will create **navigational links** inside a `<nav>` element.  

1. Add a `<nav>` element.  
2. Inside it, add 5 `<a>` elements with the `href` values set to:
  - `/page1/`
  - `/page2/`
  - `/page3/`
  - `/page14/`
  - `/page15/`

In the end it should look like this:  
![html-semantics-4-exercise-finished](https://img.enkipro.com/cedfbfdffebbdc99a3635ac0a8c39322.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<nav>` element to group navigation links.
- Example:
```html
  <nav>
    <a href="/page1/">Page 1</a>
    <a href="/page2/">Page 2</a>
  </nav>
```