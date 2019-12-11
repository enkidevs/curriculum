---
author: jordanfish

levels:
  - basic
  - advanced
  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout

links:
  - '[Tutorial on Pseudo Classes & Elements](https://scrimba.com/p/pWvwCg/cbmMJSb){website}'
  - '[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN Docs on :nth-child](https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-child){documentation}'

---

# The `nth-child` Property

---
## Content

The basic usage of the `nth-child` pseudo-class is to select a single child of the targeted element, like so:
```css
ul:nth-child(3){
  color: orangered;
}
```

Or, to select more children:
```css
ul:nth-child(3), ul:nth-child(5){
  color: orangered;
}
```
Would change the color of the 3rd and 5th children. But this can get very messy when working with big lists.

However, `nth-child` accepts *expressions* between the parentheses:
```css
ul:nth-child(3n+2){
  color: orangered;
}
```
The counter for n starts at *0* and ends when it hits the total number of direct children of the element. For the **3n+2** expression, the values table for 6 children is:
```bash
3×0+2 = 2nd child
3×1+2 = 5th child
3×2+2 = 8th child
3×3+2 = 11th child
3×4+2 = 14th child
3×5+2 = 17th child
```
As the list has *6* elements, the expression is relevant only for the 2nd and the 5th. However, it saves a lot of typing.

To select all the children from the fifth one to the end of the list, the expression is **n+5**.

Negative values of *n* can be used to select children from the bottom up. For example, to select items *1 through 5* and change their color:
```bash
# -n+5
-(0) + 5 = 5th
-(1) + 5 = 4th
-(2) + 5 = 3rd
-(3) + 5 = 2nd
-(4) + 5 = 1st
-(5) + 5 = 0 (no element)
```
This is 6 items list:

```html
<ul>
  <li>First list item</li>
  <li>Second list item</li>
  <li>Third list item</li>
  <li>Fourth list item</li>
  <li>Fifth list item</li>
  <li>Sixth list item</li>
</ul>
```
And the CSS:
```css
li {
  color: white;
}

li:nth-child(-n+5) {
  color: orangered;
}
```

![HtmlToSvgmin.svg](https://img.enkipro.com/314f902f9748cf7e54dcf197adb0ca01.png)

---
## Revision

Which items would the following CSS code select? ???
```css
li:nth-child(-n+7) {
   display: block;
}
```

* Items 1 through 7.
* Items 0 through 7.
* Items 1 through 6
* Items -1 through 7.
