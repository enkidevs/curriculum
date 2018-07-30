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
  - '[CodePen: Q Element with Cite](https://codepen.io/enkidevs/pen/gKBYJO){code}'
  - '[MDN docs for q](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/q){website}'

---
# Intro q
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

![q-element](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2272%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2272%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Arial-ItalicMT%2C%20Arial%22%20font-size%3D%2216%22%20font-style%3D%22italic%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3ECarrie%20Bradshaw%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22137.15625%22%20y%3D%2231%22%20font-family%3D%22ArialMT%2C%20Arial%22%3E%20said%20%E2%80%9CShopping%20is%20my%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2248%22%20font-family%3D%22ArialMT%2C%20Arial%22%3Ecardio%E2%80%9D%20and%20that%20is%20pretty%20awesome.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/gKBYJO)-->

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
