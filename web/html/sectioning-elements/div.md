---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout

links:
  - '[MDN: <div> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){documentation}'
  - '[W3S: <div> Element](https://www.w3schools.com/tags/tag_div.asp){documentation}'

---
# The `<div>` element
---
## Content

The HTML `<div>` element is used for content division, meaning it is a container that typically holds text or images and can be styled changing its display within a web page. It is the most commonly used HTML element!

The `<div>` element has zero effect on either the content or layout of the page unless styled with CSS. However, this element is really useful for grouping a bunch of content together. In this example, the content would display the same even without the `<div>`  element.

Example:
```html
<div>
  <p>
    Any kind of content here.
    Such as &lt;p&gt;, &lt;table&gt;,
    &lt;a&gt;, etc.
  </p>
</div>
```

![simple-div](https://img.enkipro.com/607d22240f2ba26d3a9397d8f472a44e.png)

[View CodePen](https://codepen.io/enkidevs/pen/QxzYyV)

Since a web page typically has numerous `div` elements, it is common that they will each be given a **common** `class` name or a **unique** `id` name in order to be targeted by CSS.

In this case, when we add a `class` to the `<div>`, and use CSS to style that class, we have greater control over the layout and design like this:

```html
<div class="shadowbox">
  <p>
    Any kind of content here.
    Such as &lt;p&gt;, &lt;table&gt;,
    &lt;a&gt;, etc.
  </p>
</div>
```

```css
.shadowbox {
  font-family: Arial, sans-serif;
  font-size: 1.5em;
  width: 300px;
  border: 5px solid #333;
  box-shadow: 4px 4px 5px #bbb;
  border-radius: 10px;
  padding: 0px 20px;
  background-image:
  linear-gradient(180deg, #fff,
  #ddd 40%, #ccc);
}

```

![styled-div](https://img.enkipro.com/88f226f07047d93fa86a1564b0e2f9b6.png)

[View CodePen](https://codepen.io/enkidevs/pen/WyLPxg)

**Notes:**
 - The div element should NOT be used when there is a more appropriate semantic element(like `<nav>` or `<article>`).
 - Before HTML5 there was no specific elements for layout like `<header>`,`<nav>`,`<footer>`, etc, and in it's place people used the `<div>` element. If you encounter code like this `<div class="header">...</div>`, know that it is not semantic and follows older HTML4 layouts.

---
## Practice

Which of the following is a useful way of using a div container in a webpage?

???

* Generic content for stylistic purposes.
* Primary content of a document
* Sub-sections of content
* Contact information
* Forum posts

---
## Revision

Which HTML element is best used here?

```html
<body>
  <TAG class="wrapper">
    <!--rest of site content-->
  </TAG>
</body>
```

TAG: ???

 * `<div>`
 * `<main>`
 * `<aside>`
 * `<section>`
 * `<article>`
 * `<wrap>`

---
## Quiz

### If you come across a website that uses this code, which statement is most appropriate?

```html
<div class="nav">...</nav>
```

???

 * This code is not semantic and follows older HTML4 layouts.
 * Navigation buttons will typically be found within it.
 * This code is not written properly and will fail validation.
 * Multiple classes called "nav" can be added to various containers.
 * This most likely contains the primary navigation to the web page.
