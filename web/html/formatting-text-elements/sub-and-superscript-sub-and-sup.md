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
# Sub and Super Script
---
## Content

The HTML `<sub>`, or the **Subscript** element is used to display some text as subscript (written or printed **below** the line), whereas the `<sup>`, or the **Superscript** element is used to display some text as superscript (written or printed **above** the line).

Both elements are only used for typographical reasons and neither should be used for styling and/or appearance only. If you want to style your text sub or superscript, you can use the appropriate CSS properties:
  - `vertical-align: sub;`
  - `vertical-align: -25%;`
  - `vertical-align: super;`
  - `vertical-align: 50%;`

For instance, you can use the subscript for properly display the 2 in H20 and you can use the superscript to properly display the 2 in E = mc2.

Example:
```html
<p>
  Both
  H<sub>2</sub>O
  and
  E = mc<sup>2</sup>
  are fun to learn about.
</p>
```

![element-sub-sup](https://img.enkipro.com/153e58b3e94894dd45205198139fbac4.png)

[View CodePen](https://codepen.io/enkidevs/pen/xzQvPv)

The most common `<sup>` elements uses are to display exponents (x^2) or ordinal numbers (3rd, 4th, 5th). The most common use for the `<sub>` element is marking footnotes, variable numbers (X1, X2...Xn), and denoting numbers in chemical formulas.

**Note:** Both `<sup>` and `<sub>` cannot be used at the same time to make a subscript appear directly below a superscript number and vice versa. To do so, you need to use the MathML (Mathematical Markup Language).

**The MathML elements:** `<msub>`, `<msup>` and `<msubsup>`

---
## Practice

Write the code to properly display the text above and below the usual line of writing/printing:

```html
<p>
  Both
  H<tag1>2</tag1>O
  and
  E=mc<tag2>2</tag2>
  are fun to learn about.
</p>
```

tag1 = ???
tag2 = ???

* sub
* sup
* sum
* sud
* sos

---
## Revision

What element should be used to change the "2" in chemical formulas, like H2O?

???

What element should be used to change the "2" in formulas, like E = mc2?

???

* sub
* sup
* sum
* sud
* sos

---
## Quiz

### How much do you know about text in HTML?

Which of these is not a proper MathML formula for sub and superscript?

???

* `<msubsuper>`
* `<msub>`
* `<msup>`
* `<msubsup>`
