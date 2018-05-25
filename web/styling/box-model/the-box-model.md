---
author: mihaiberq

levels:

  - beginner

type: normal

category: tip

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model){documentation}'


---

# The *Box Model*

---
## Content

According to the **box model**, every element on the page is a rectangular box that may have `width`, `height`, `margin`, `padding` or `border`.

The dimensions of such a box are calculated by summing the values of the above mentioned properties. To better understand the formula, consider this example:
```
div{
  width: 600px;
  height: 200px;
  border: 4px solid blue;
  margin: 20px;
  padding: 10px;
}
```

![min.svg](%3Csvg%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%20xmlns=%22http://www.w3.org/2000/svg%22%20version=%221.2%22%20baseProfile=%22tiny%22%3E%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%3Cg%20fill=%22none%22%20stroke=%22#000%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%3E%3Cpath%20d=%22M8%208h800v300H8V8%22%20fill=%22#596193%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M75%2015h666v286H75V15%22%20fill=%22#fff%22%20stroke=%22none%22/%3E%3Cg%20fill=%22#596193%22%20font-size=%2226%22%20font-family=%22'Roboto',sans-serif%22%3E%3Ctext%20x=%22110%22%20y=%2237%22%3EMargin%3C/text%3E%3Ctext%20x=%22140%22%20y=%2265%22%3EBorder%3C/text%3E%3Ctext%20x=%22170%22%20y=%22100%22%3EPadding%3C/text%3E%3Ctext%20x=%22195%22%20y=%22130%22%3EContent%3C/text%3E%3C/g%3E%3Cg%20font-size=%2222%22%20font-weight=%22300%22%20font-family=%22'Roboto',sans-serif%22%3E%3Ctext%20x=%22393%22%20y=%2237%22%3E20%3C/text%3E%3Ctext%20x=%22400%22%20y=%2265%22%3E4%3C/text%3E%3Ctext%20x=%22393%22%20y=%22100%22%3E10%3C/text%3E%3Ctext%20x=%2278%22%20y=%22165%22%3E20%3C/text%3E%3Ctext%20x=%22115%22%20y=%22165%22%3E4%3C/text%3E%3Ctext%20x=%22138%22%20y=%22165%22%3E10%3C/text%3E%3Ctext%20x=%22365%22%20y=%22165%22%3E600%C3%97200%3C/text%3E%3C/g%3E%3Cpath%20d=%22M75%2015h3v3h-3v-3M738%2015h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M78%2016.5h659%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%227%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M75%20298h3v3h-3v-3M738%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M78%20299.5h659%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%227%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M75%2015h3v3h-3v-3M75%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M76.5%2018v279%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%228%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M738%2015h3v3h-3v-3M738%20298h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M739.5%2018v279%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%228%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M105%2040h606v236H105V40%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M105%2040h606v3H105v-3M105%20273h606v3H105v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M105%2040h3v236h-3V40M708%2040h3v236h-3V40%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M135%2070h546v176H135V70%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M135%2070h3v3h-3v-3M678%2070h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M138%2071.5h539%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%224%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M135%20243h3v3h-3v-3M678%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M138%20244.5h539%22%20stroke-dasharray=%229,9%22%20stroke-dashoffset=%224%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M135%2070h3v3h-3v-3M135%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M136.5%2073v169%22%20stroke-dasharray=%229,9%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M678%2070h3v3h-3v-3M678%20243h3v3h-3v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20fill=%22none%22%20d=%22M679.5%2073v169%22%20stroke-dasharray=%229,9%22%20stroke-width=%223%22%20stroke-linecap=%22butt%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22/%3E%3Cpath%20d=%22M165%20105h486v106H165V105%22%20fill=%22#000%22%20fill-opacity=%22.098%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M165%20105h486v3H165v-3M165%20208h486v3H165v-3%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3Cpath%20d=%22M165%20105h3v106h-3V105M648%20105h3v106h-3V105%22%20fill=%22#000%22%20stroke=%22none%22/%3E%3C/g%3E%3C/svg%3E)

The total width of the whole element will be **20+4+10+600+10+4+20=668p**, which is the sum of the content width and left and right `margins`, `borders` and `paddings`.

It is important to mention that some elements *do not accept* top and bottom margin and padding. We will talk about these in more detail in a future workout.

---
## Revision

Which is the inside-out order for the *box model* components?

???

* Content/Padding/Border/Margin
* Content/Border/Padding/Margin
* Padding/Content/Border/Margin
* Content/Padding/Margin/Border

---
## Quiz 
### are you familiar with the box model?

What’s the correct outside-in order of the elements contained by the Box Model?

 ???

* Margin/Border/Padding/Content
* Border/Margin/Padding/Content
* Margin/Padding/Border/Content
* Content/Border/Margin/Padding
