---
author: stefan.stojanovic
levels:
  - beginner
  - basic
type: normal
category: must-know
stub: true
tags: []
links:
  - >-
    [MDN docs for
    figure](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure){website}
  - >-
    [MDN docs for
    figcaption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figcaption){website}
aspects:
  - deep
---

# Figure & Figcaption


---

## Content

The HTML `<figure>` element is used to represent self-contained content. Also, the `<figure>` element frequently has a `<figcaption>` element within it.

The `<figcaption>` element is used to represent a caption that relates to a `<figure>` element and must be either the first or last child of the `<figure>` element.

The `<figure>` element is usually an image, code snippet, diagram, illustration, etc., which is referenced in the main flow of the document. Also, the `<figure>` elements content can also be moved to another part of the document without having any effect on the main flow.

Example with a poem:

```bash
<figure>
 <p>
   Old cave, hidden door,<br>
   Carved ceiling, ancient floor,<br>
   Statue of old, a hero bold,<br>
   Sitting on his throne of gold,<br>
   King of legend, time forgot,<br>
   Now all that is left is for him to rot.
 </p>
 <figcaption><cite>Old Cave</cite>.
  Author: Unknown</figcaption>
</figure>
```

More examples '[Here](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/figure)'


---

## Practice

Match the code with the tags to properly define a caption for the photo.

```bash
<tag1>
  <img src="waterfall.jpg"
  alt="Seljalandsfoss waterfall
       in Iceland">
  <tag2>
    The Seljalandsfoss waterfall
    in Iceland.
  Original by
    <a href="http://www.flickr.com
            /photos/enki/">
       Enki Pro
    </a>
  </tag2>
</tag1>
```

tag1 = ???
tag2 = ???

* figure
* figcaption
* annotate
* reference
* caption
* figtitle


---

## Revision

Use ??? when the content is related, but not required to follow along.
Use ??? when the content is required to follow along, but it can be placed anywhere in the flow of the content.
Use ??? when the content is required and the position is important in the context of the content.

* `<aside>`
* `<figure>`
* `<div>`
* `<content>`
* `<article>`


---

## Quiz

### How much do you know about 

`<figure>`

, 

`<aside>`

 & 

`<div>`

?


What HTML element best defines a caption or legend for a figure?

* `<figcaption>`
* `<caption>`
* `<legend>`
* `<fig>`
* `<figtitle>`

