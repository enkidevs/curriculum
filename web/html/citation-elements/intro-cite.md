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
  - '[CodePen: cite](https://codepen.io/enkidevs/pen/xzyKBz){code}'
  - '[MDN docs for cite](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite){website}'

---
# Cite Element
---
## Content

The HTML `<cite>` element is used to describe a reference of a cited **creative work**. This element needs to contain either the title or the URL of the cited work.

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

```html
<p>
  More information about Enki here
  <cite>
    [https://enki.com/about]
  </cite>.
</p>
```

![cite]
(%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2272%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2272%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EMore%20information%20about%20Enki%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22222.54688%22%20y%3D%2231%22%20font-family%3D%22Arial-ItalicMT%2C%20Arial%22%20font-style%3D%22italic%22%3E%5Bhttps%3A%2F%2F%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2248%22%20font-family%3D%22Arial-ItalicMT%2C%20Arial%22%20font-style%3D%22italic%22%3Eenki.com%2Fabout%5D%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22130.95313%22%20y%3D%2248%22%3E.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The cited URL under the `<cite>` element will, by default, display in <i>italic</i>. However, this is easily editable by adding the `font-style` CSS property to the `<cite>` element and changing the default value to 'normal' or even 'oblique' (aka bold).

<!--[View CodePen](https://codepen.io/enkidevs/pen/xzyKBz)-->

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

```html
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
