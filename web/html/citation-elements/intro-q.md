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
  - deep

links:
  - '[HTML <q> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q){documentation}'

---
# Intro `<q>`
---
## Content

The HTML `<q>`, or the **Inline Quotation** element, is used for indicating short quotations. This element is displayed as an inline element and is typically used for short quotations that don't require paragraph breaks. On the other hand, if you need a larger quotation, you should use the `<blockquote>` element.

Most browsers display the `<q>` element by placing quotation marks around the content.

Example:
```html
<p>
  <cite>
    Carrie Bradshaw
  </cite>
  said
  <q cite="#">
    Shopping is my cardio
  </q>
  and that is pretty awesome.
</p>
```

Quote Result:

![q-element](https://img.enkipro.com/377c590f47e82022e7b3d27d90ec4a20.png)

[View CodePen](https://codepen.io/enkidevs/pen/gKBYJO)

---
## Practice

Which statements about the `<q>` element is not correct?

```html
<p>
  <cite>
    Carrie Bradshaw
  </cite>
  said
  <q cite="#">
    Shopping is my cardio
  </q>
  and that is pretty awesome.
</p>
```

???

* used when quotation spans multiple lines
* used for indicating short quotations
* quotation marks usually added around text by browsers
* displays as an inline element


---
## Revision

What is the most appropriate HTML element to use here?

```html
<p> As
  <cite>Ron Burgundy</cite>
  shouted
  <tag cite="#">
    I'm not a baby!
    I'm a man!
    An ANCHORMAN!
  </tag>
</p>

```

tag = ???

* q
* quote
* blockquote
* quot
* mark
* cite
* sq

---
## Quiz

### How much do you know about semantic HTML?

Which HTML element is best to indicate short quotations?

* `<q>`
* `<quote>`
* `<blockquote>`
* `<cite>`
