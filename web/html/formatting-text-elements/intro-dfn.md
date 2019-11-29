---
author: shoutmatt

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep

aspects:
  - introduction

links:

---
# Intro `<dfn>`
---
## Content

The HTML `<dfn>`, or the **Definition** element, is used to specify a term that's being defined within the `<p>`, `<section>` and/or `<dt>`/`<dd>` pairing elements. Also, the `<dfn>` element is usually used to indicate the first use of a term in a document.

```html
<p>
  <dfn>Enki</dfn> is an app
  that provides daily workouts
  for your dev skills.
</p>
```

![element-dfn](https://img.enkipro.com/a4baae13adcf71436592b38eae34faa9.png)


**Note:** The `<dfn>` elements main purpose is to provide semantic meaning. Other than that, it has no special functionality.

Also, the `<dfn>` element has a `title` attribute. If the `title` attribute is present, the content of the `<dfn>` element, which is the value of the `title` attribute, has to be the term being defined and nothing else.

Furthermore, the `<dfn>` element can have the `<abbr>` element nested inside it. If the `<dfn>` element has a single `<abbr>` element with a `title` attribute nested inside it, then the value of the `<abbr>` elements `title` attribute is the term being defined.

Example with abbr:
```html
<p>
  <dfn>
   <abbr
    title="Hypertext Markup Language">
   HTML
   </abbr>
  </dfn>
  is the standard markup language
  for creating web pages.
</p>

<p>
  After a few hours,
  I was finally able to understand
  <abbr
   title="Hypertext Markup Language">
   HTML
  </abbr>
  !
</p>
```

Abbr Result:

![element-dfn-abbr](https://img.enkipro.com/90a7f02d339751f2f5499d5bc092b7b1.png)


---
## Practice

Which statement is true regarding the `<dfn>` element?

???

```html
<p>
<dfn>Enki</dfn>
is an app providing daily workouts
for your dev skills.
</p>
```

* `<dfn>` defines a term when it is being described.
* Useful to apply element each time term is referred.
* Common to use `<abbr>` with `<dfn>` for all abbreviation's expansion.

---
## Revision

Which HTML element is used to indicate the first use of a term in a document?

???

* dfn
* dir
* item
* id
* term

---
## Quiz

### How much do you know about formatting text elements?

From the following code, match the proper HTML elements with the tags:
```html
<p>
  <tag>
   <abbr title="Hypertext Markup Language">
    HTML
   </abbr>
  </tag>
  is the standard markup language
  for creating web pages.
</p>
```
tag: ???

* dfn
* abbr
* wbr
* desc
