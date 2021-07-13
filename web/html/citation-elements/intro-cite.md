---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <cite>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The cite Element


---

## Content

The `<cite>` element is used to describe a reference of a cited **creative work**. This element needs to contain either the title or the URL of the cited work.

What falls under creative work:

- Online content
- Books
- Computer programs
- Original writing or artwork
- Exhibitions
- Videos
- Legal writings
- Research paper

```html
<p>
  More information about Enki here
  <cite>
    [https://enki.com/about]
  </cite>.
</p>
```

![cite](https://img.enkipro.com/28852f600f281af9f98989e02b4471bc.png)


By default, the URL under the `<cite>` element will display in *talic*. However, this is easily editable by adding the `font-style` CSS property to the `<cite>` element, and changing the default value to "normal" or even "oblique" (aka **bold**).

[View CodePen](https://codepen.io/enkidevs/pen/xzyKBz)


---

## Practice

Which statement about the `<cite>` element is not correct?

???

- displays as a block element
- used for indicating a citation
- default font style is italic
- used for books, essays, poems, or scripts
- used for movies, plays, songs, or TV Shows.
- displays as an inline element


---

## Revision

Given the code:

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

Which HTML element is best to use in this example?

```html
tag = ???
```

- `<cite>`
- `<quote>`
- `<blockquote>`
- `<q>`
- `<movie>`
- `<title>`


---

## Quiz

### How much do you know about semantic HTML elements?


Which HTML element is used to reference the title of a body of work (like a book, song, movie, painting, etc.)?

- `<cite>`
- `<quote>`
- `<blockquote>`
- `<q>`
