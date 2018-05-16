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
  - '[MDN docs for q](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q){website}'

---
# Intro q
---
## Content

The HTML `<q>`, or **The Inline Quotation element** is used for indicating short quotations. This element is displayed as an inline element and is typically used for short quotations that don't require paragraph breaks. On the other hand, if you need a larger quotation, you should use the `<blockquote>` element.

Furthermore, most browsers implement the `<q>` element by placing quotation marks.

Example:
```
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

Result:
```
  Carrie Bradshaw
  said
  " Shopping is my cardio "
  and that is pretty awesome.
```

Even though most modern browsers automatically add quotations for the `<q>` element, some older browsers may require a style rule to be added for quotation marks to appear.

---
## Practice

Which statements about the `<q>` element is not correct?

```
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

```
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
