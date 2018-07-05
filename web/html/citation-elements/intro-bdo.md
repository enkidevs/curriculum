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
  - '[MDN docs for bdo](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo){website}'

---
# bdo Element
---
## Content

The HTML `<bdo>`, or **The Bidirectional Text Override element** is used to override the current directionality of text. This means that you can have a text written in one direction, render and display in the opposite direction.

This element has 2 element related attributes, `ltr` and `rtl`.
 - `ltr` sets text direction to Left-to-Right.
 - `rtl` sets text direction to Right-to-Left.


Example with one word:
```
<p>
  Play
</p>
<p>
  <bdo
    dir="rtl">Play
  </bdo>
</p>
```
Result:
```
  Play
  yalP
```

Example with a sentence:
```
<p>
  The sun is shining.
</p>
<p>
  <bdo
    dir="rtl">The sun is shining.
  </bdo>
</p>
```
Result:
```
The sun is shining.
.gninihs si nus ehT
```

Using this element is very useful for content presented in multiple languages. For instance, if you have a text that you want to be displayed in Arabic or Hebrew, next to translating the text, you would also use the `<bdo>` element along with its `rtl` attribute to make the text go Right-To-Left and become readable.

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
