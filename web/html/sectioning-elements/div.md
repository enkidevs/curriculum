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
  - '[CodePen: Simple DIV](https://codepen.io/enkidevs/pen/QxzYyV){code}'
  - '[CodePen: Styled DIV](https://codepen.io/enkidevs/pen/WyLPxg){code}'
  - '[MDN docs for div](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){website}'
  - '[W3S docs for div](https://www.w3schools.com/tags/tag_div.asp){website}'

---
# Div element
---
## Content

The HTML `<div>` element is used for content division, meaning it is a container that typically holds text or images and can be styled changing its display within a web page. It is the most commonly used HTML element! 

The `<div>` element has zero effect on either the content or layout of the page unless styled with CSS. However, this element is really useful for grouping a bunch of content together. In this example, the content would display the same even without the `<div>`  element.

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

![simple-div](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22132%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22c%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%22.75867%25%22%20y2%3D%2269.49061%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23FFF%22%2F%3E%3Cstop%20offset%3D%2269.49061%25%22%20stop-color%3D%22%23DDD%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23CCC%22%2F%3E%3C%2FlinearGradient%3E%3Crect%20id%3D%22b%22%20width%3D%22204%22%20height%3D%2293%22%20x%3D%2220%22%20y%3D%2219%22%20rx%3D%2210%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22110.3%25%22%20height%3D%22122.6%25%22%20x%3D%22-5.1%25%22%20y%3D%22-11.3%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%223.5%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22132%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Crect%20width%3D%22199%22%20height%3D%2288%22%20x%3D%2222.5%22%20y%3D%2221.5%22%20fill%3D%22url%28%23c%29%22%20stroke%3D%22%23333%22%20stroke-linejoin%3D%22square%22%20stroke-width%3D%225%22%20rx%3D%2210%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2217%22%3E%3Ctspan%20x%3D%2240%22%20y%3D%2251%22%3EAny%20kind%20of%20content%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2271%22%3Ehere.%20Such%20as%20%26lt%3Bp%26gt%3B%2C%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2291%22%3E%26lt%3Btable%26gt%3B%2C%20%26lt%3Ba%26gt%3B%2C%20etc.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/QxzYyV)-->

Since a web page typically has numerous `div` elements, it is common that they will each be given a **common** `class` name or a **unique** `id` name in order to be targeted by CSS. 

In this case, when we add a `class` to the `<div>`, and use CSS to style that class, we have greater control over the layout and design like this:

```
<div class="shadowbox">
  <p>
    Any kind of content here.
    Such as &lt;p&gt;, &lt;table&gt;,
    &lt;a&gt;, etc.
  </p>
</div>

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

![styled-div](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22132%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22c%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%22.75867%25%22%20y2%3D%2269.49061%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23FFF%22%2F%3E%3Cstop%20offset%3D%2269.49061%25%22%20stop-color%3D%22%23DDD%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23CCC%22%2F%3E%3C%2FlinearGradient%3E%3Crect%20id%3D%22b%22%20width%3D%22204%22%20height%3D%2293%22%20x%3D%2220%22%20y%3D%2219%22%20rx%3D%2210%22%2F%3E%3Cfilter%20id%3D%22a%22%20width%3D%22110.3%25%22%20height%3D%22122.6%25%22%20x%3D%22-5.1%25%22%20y%3D%22-11.3%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%223.5%22%2F%3E%3CfeComposite%20in%3D%22shadowBlurOuter1%22%20in2%3D%22SourceAlpha%22%20operator%3D%22out%22%20result%3D%22shadowBlurOuter1%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20values%3D%220%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%200%201%200%22%2F%3E%3C%2Ffilter%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22132%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23000%22%20filter%3D%22url%28%23a%29%22%20xlink%3Ahref%3D%22%23b%22%2F%3E%3Crect%20width%3D%22199%22%20height%3D%2288%22%20x%3D%2222.5%22%20y%3D%2221.5%22%20fill%3D%22url%28%23c%29%22%20stroke%3D%22%23333%22%20stroke-linejoin%3D%22square%22%20stroke-width%3D%225%22%20rx%3D%2210%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2217%22%3E%3Ctspan%20x%3D%2240%22%20y%3D%2251%22%3EAny%20kind%20of%20content%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2271%22%3Ehere.%20Such%20as%20%26lt%3Bp%26gt%3B%2C%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2240%22%20y%3D%2291%22%3E%26lt%3Btable%26gt%3B%2C%20%26lt%3Ba%26gt%3B%2C%20etc.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/WyLPxg)-->

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
