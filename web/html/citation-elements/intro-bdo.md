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
  web.markup-text.2: 10
  web.layout-html.3: 10

aspects:
  - introduction
  - workout
  - deep
  - obscura

links:
  - '[CodePen: bdo element](https://codepen.io/enkidevs/pen/vrVBWQ){code}'
  - '[MDN docs for bdo](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo){website}'

---
# bdo Element
---
## Content

The HTML `<bdo>`, or the **Bidirectional Text Override** element, is used to override the current directionality of text. This means that you can have text written in one direction, render and display in the opposite direction.

This element has 2 element related attributes, `ltr` and `rtl`.
 - `ltr` sets the text direction to Left-to-Right.
 - `rtl` sets the text direction to Right-to-Left.

Example with one word:
```html
<p>
  Play
</p>
<p>
  <bdo dir="rtl">Play</bdo>
</p>
```
Single Word Result:

![bdo-play](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2286%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2286%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EPlay%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2218%22%20y%3D%2265%22%3EyalP%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Example with a sentence:
```html
<p>
  The sun is shining.
</p>
<p>
  <bdo
    dir="rtl">The sun is shining.
  </bdo>
</p>
```
Sentence Result:

![bdo-sun](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2291%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2291%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EThe%20sun%20is%20shining.%3C%2Ftspan%3E%20%20%3Ctspan%20x%3D%2218%22%20y%3D%2265%22%3E.gninihs%20si%20nus%20ehT%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[Visit CodePen](https://codepen.io/enkidevs/pen/vrVBWQ)-->

Using this element is very useful for content presented in multiple languages. For instance, if you have a text that you want to be displayed in Arabic or Hebrew, next to translating the text, you would also use the `<bdo>` element along with its `rtl` attribute to make the text go Right-To-Left and become readable.

**Note:** It's also interesting that when text in English is written Right-To-Left in a web page, and the text is copied and pasted elsewhere by a user, that text will be displayed in regular Left-To-Right. This is because the text only appears Right-To-Left because of the HTML code, and without it, the text will display as written. 

---
## Practice

Write the code to display the word "backwards" backwards.

`<p>`This is such a `<??? ???="???">`backwards`<???>` thing to do!`</p>`

* bdo
* dir
* rtl
* /bdo
* ltr
* mld
* lang
* /mld
* /lang

---
## Revision

Which HTML element is used to change the direction of specific sections of text within a multi-language document - for such languages as Arabic and Hebrew?

???

* `<bdo>`
* `<bdio>`
* `<ltr>`
* `<rtl>`
* `<mld>`
* `<lang>`

---
## Quiz

### How much do you know about typography effects in HTML?

What does the `<bdo>` element do in this code?

`<p>`Have you watched `<bdo dir="rtl">`Stranger Things`</bdo>` on Netflix?`</p>`

???

* displays the letters backwards.
* displays the letters upside down.
* displays the letters mirrored.
* displays the letters flipped.
* helps search engines understand the directory of text.
* doesn't do anything without CSS styles.
