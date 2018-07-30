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

links:
  - '[CodePen: Element sub & sup](https://codepen.io/enkidevs/pen/xzQvPv){code}'

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
```
<p>
  Both
  H<sub>2</sub>O
  and
  E = mc<sup>2</sup>
  are fun to learn about.
</p>
```

![element-sub-sup](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%20fill%3D%22%23000%22%3EBoth%20H%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2268.49219%22%20y%3D%2234%22%20fill%3D%22%23FFF%22%20font-size%3D%2212%22%3E2%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2275.23047%22%20y%3D%2234%22%20fill%3D%22%23000%22%3EO%20and%20E%20%3D%20mc%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22168.90234%22%20y%3D%2234%22%20fill%3D%22%23FFF%22%20font-size%3D%2212%22%3E%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22174.84375%22%20y%3D%2234%22%20fill%3D%22%23000%22%3E%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2254%22%3Elearn%20about.%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22181%22%20y%3D%2234%22%3Eare%20fun%20to%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%2269%22%20y%3D%2238%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2212%22%3E%3Ctspan%20x%3D%22169%22%20y%3D%2230%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/xzQvPv)-->

The most common `<sup>` elements uses are to display exponents (x^2) or ordinal numbers (3rd, 4th, 5th). The most common use for the `<sub>` element is marking footnotes, variable numbers (X1, X2...Xn), and denoting numbers in chemical formulas.

**Note:** Both `<sup>` and `<sub>` cannot be used at the same time to make a subscript appear directly below a superscript number and vice versa. To do so, you need to use the MathML (Mathematical Markup Language).

**The MathML elements:** `<msub>`, `<msup>` and `<msubsup>`

---
## Practice

Write the code to properly display the text above and below the usual line of writing/printing:

```
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
