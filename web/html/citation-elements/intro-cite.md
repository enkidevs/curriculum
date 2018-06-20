---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN docs for cite](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite){website}'

---
# Cite Element
---
## Content

The HTML `<cite>` element is used to describing a reference to a cited `creative work`. This element has to contain either the title or the URL of the cited work.

What falls under creative work:
- Any online content
- Any book
- Any computer program
- Any original writing
- Any exhibition
- Any video
- Any legal writings
- Any original artwork
- Any research paper

Example:
```
<p>
  More information about enki
  <cite>
    [https://enki.com/about]
  </cite>.
</p>
```

The cited URL under the `<cite>` element will, by default, display in <i>italic</i>. However, this is easily editable by adding the `font-style` CSS property to the `<cite>` element. Also, the `<cite>` element displays as an inline element.

---
## Practice

Which statement about the `<cite>` element is not correct?

???

* displays as a block element
* used for indicating a citation
* default font style is italic
* works such as book, essay, poem, & script
* works such as movie, play, song, & TV show.
* displays as an inline element


---
## Revision

What HTML element is best to use in this example?

```
<p>
The 1939 movie
<tag>The Wizard of Oz</tag>
was originally filmed in both
sepia-toned black-and-white
and Technicolor.
</p>

<p>
  <tag>The Wonderful Wizard of Oz</tag>
   was written by L. Frank Baum
   and published in 1900.
</p>
```

tag = ???

* `<cite>`
* `<quote>`
* `<blockquote>`
* `<q>`
* `<movie>`
* `<title>`

---
## Quiz

### How much do you know about semantic HTML elements?

Which HTML element is used to reference the title of a body of work (like a book, song, movie, painting, etc.)?

* `<cite>`
* `<quote>`
* `<blockquote>`
* `<q>`
