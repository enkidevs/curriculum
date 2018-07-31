---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.layout-html.0: 10

aspects:
  - introduction

links:
  - '[MDN divisions](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){documentation}'
  - '[MDN spans](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/span){documentation}'

---

# Divisions and Spans

---
## Content

A `<div>` container, which is short for **div**isions, and `<span>` containers are important HTML elements used for styling the layouts. `<div>`s and `<span>`s alone do absolutely nothing without CSS. They do not have any semantic value as they are simple containers that wrap around content (text, images, etc.) to help control the layout and styling.

A `<div>` is often used to group larger chunks of content and is often a block element, meaning it has a distinct break before and after it (like paragraphs, headings, etc). 

A `<span>` is often used to group a small chunk of content inside a line of text (such as styling a few key words inside a paragraph).

Check out this code:
```html
<div>
  <p>A paragraph inside a div.</p>
  <p>An <span>important</span> paragraph
     inside the div. </p>
  <p>A div <div></div> inside a
     paragraph.</p>
</div>
```

Visually, the code above will be rendered this way:

![div-and-span](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22157%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22157%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2219%22%20y%3D%2233%22%3EA%20paragraph%20inside%20a%20div.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%2267%22%3EAn%20important%20paragraph%20inside%20the%20div.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%22101%22%3EA%20div%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2219%22%20y%3D%22135%22%3Einside%20a%20paragraph.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

One difference between `<div>` and `<span>` elements is that you are able to stack multiple `<span>`s on the same line without breaking the layout of the page, while trying to stack `<div>`s will effectively be adding a new line (in the above case, between **div** and **inside**).

When using CSS to style `<div>` and `<span>` elements, ids and classes are often assigned to them in order to uniquely style them. So, it is common to see them written like this where the `<div>` has certain styles assigned to it and the `<span>` changes the style of the text within that paragraph. 

```html
<div id="callout">
  <p>This is 
   <span class="highlight>
     important
   </span> to see!
  </p>
</div>
```

---
## Revision

Span's are seen as ??? elements.

* stylistic
* structural
* not
