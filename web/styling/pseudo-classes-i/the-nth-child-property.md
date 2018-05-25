---
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[github.com](https://github.com/AllThingsSmitty/css-protips){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-child){documentation}'


---

# The `nth-child` Property

---
## Content

The basic usage of the `nth-child` pseudo-class is to select a single child of the targeted element, like so:
```
ul:nth-child(3){
  color: orangered;
}
```

Or, to select more children:
```
ul:nth-child(3), ul:nth-child(5){
  color: orangered;
}
```
Would change the color of the 3rd and 5th children. But this can get very messy when working with big lists.

However, `nth-child` accepts *expressions* between the parentheses:
```
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
```
li {
  color: white;
}

li:nth-child(-n+5) {
  color: orangered;
}
```

![HtmlToSvgmin.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%2245%22%20font-family=%22Arial%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#ff6f31%22%3EFirst%20list%20item%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%2289%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#ff6f31%22%3ESecond%20list%20item%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%22133%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#ff6f31%22%3EThird%20list%20item%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%22177%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#ff6f31%22%3EFourth%20list%20item%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%22221%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#ff6f31%22%3EFifth%20list%20item%3C/text%3E%3Ctext%20stroke=%22none%22%20x=%22328%22%20y=%22265%22%20font-family=%22'Roboto',%20sans-serif%22%20font-size=%2228%22%20font-weight=%22400%22%20fill=%22#fff%22%3ESixth%20list%20item%3C/text%3E%3C/g%3E%3C/svg%3E)

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

