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
  - obscura

links:
  - '[HTML <bdo> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo){documentation}'

---
# The `<bdo>` Element
---
## Content

The HTML `<bdo>`, or the **Bidirectional Text Override** element, is used to override the current directionality of text. This means that you can have text written in one direction, render and display in the opposite direction.

This element can have only one attribute, `dir`, with only 2 two possible values:
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

![bdo-play](https://img.enkipro.com/da3b981509e8c795f16933d9e872a778.png)

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

![bdo-sun](https://img.enkipro.com/20500383239799793b6f04b204512c10.png)

[Visit CodePen](https://codepen.io/enkidevs/pen/vrVBWQ)

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
