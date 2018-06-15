---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10

aspects:
  - introduction
  - workout

links:
  - '[MDN docs for div](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){website}'
  - '[W3S docs for div](https://www.w3schools.com/tags/tag_div.asp){website}'

---
# Div element
---
## Content

The HTML `<div>` element is used for content division. It is a generic container for flow content, and the most commonly used HTML element! Flow content is a category of elements which typically contain text or embedded content.

Some flow content:
  - `<a>`
  - `<audio>`
  - `<h1>`-`<h6>`
  - `<nav>`
  - `<var>`
  - `<script>`
  - `<p>`
  - Check the full list on https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Content_categories#Flow_content

The `<div>` element has 0 effects on either the content or layout of the page unless styled with CSS. However, this element is really useful for grouping a bunch of content together, so you can easily style it later on with their `class` or `id` attributes. You can also use it to group content that you want to be presented in a different language with the `lang` attribute and many more functionalities.

Example:
```
<div>
  <p>
    Any kind of content here.
    Such as &lt;p&gt;, &lt;table&gt;,
    &lt;a&gt;, etc.
  </p>
</div>
```

In the example above, the content would display the same even without the `<div>`  element.

On the other hand,  things are different if we add some CSS to it:
```
<div class="shadowbox">
  <p>
    Any kind of content here.
    Such as &lt;p&gt;, &lt;table&gt;,
    &lt;a&gt;, etc.
  </p>
</div>

.shadowbox {
  width: 10em;
  border: 5px solid #333;
  box-shadow: 8px 8px 5px #444;
  padding: 8px 12px;
  background-image:
  linear-gradient(180deg, #fff,
  #ddd 40%, #ccc);
}

```

In this example, we have added that text in a box with a gray shadow and a 5px solid border. This way the content is distinguished from the rest of the content on the page.

**Notes:**
 -  **The div element should NOT be used when there is a more appropriate semantic element(like `<nav>` or `<article>`).**
- **Before HTML5 there was no `<nav>` element, and in it's place people used the `<div>` element. If you encouter code like this `<div class="nav">...</nav>`, know that it is not semantic and follows older HTML4 layouts.**


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

```
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

```
<div class="nav">...</nav>
```

???

 * This code is not semantic and follows older HTML4 layouts.
 * Navigation buttons will typically be found within it.
 * This code is not written properly and will fail validation.
 * Multiple classes called "nav" can be added to various containers.
 * This most likely contains the primary navigation to the web page.
