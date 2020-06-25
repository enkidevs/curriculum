---
author: Stefan-Stojanovic

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
# The `<small>` Element
---
## Content

The HTML `<small>` element, often referred to as `fine print`, is used to change the font size of some text to one size smaller (from large to medium or medium to small, etc.), up to the smallest size the browsers allows.

This element is used for adding short phrases or comments, short blocks of text, a copyright notice, or other legal text.

Example:
```html
<p>Enki is an educational
technology company.</p>
<hr>
<p><small>The content is licensed
under a <a rel="license" href="#">
Creative Commons License</a> and
by using this site, you agree to
our <a href="#">Terms of Use</a>
and our <a href="#">Privacy Policy
</a></small>.</p>
```

![element-small](https://img.enkipro.com/b0573ea0cf9a0892fa04ba2a89e33e74.png)

[View CodePen](https://codepen.io/enkidevs/pen/NBdxNX)

By default, the font-size is generally set to .8em smaller than the existing text, which is also often 1 font size smaller. In this example the "Test" text will display at the same size:

```html
<h1><small>Test</small></h1>
<h2>Test</h2>
```

![element-small-headings](https://img.enkipro.com/cac1b9b3c383f1b63b28402071d23f7a.png)

[View CodePen](https://codepen.io/enkidevs/pen/OwWMbj)

---
## Practice

Select the false statement about the `<small>` element.

???

* Typical to mark up full 'Terms of Use' page.
* Changes the text font size one size smaller.
* Often referred to as "fine print".
* Best to add to phrases or short block of text.
* Useful around copyright notice

---
## Revision

What HTML element is used to make the text font size one size smaller?

???

* `<small>`
* `<smaller>`
* `<text-size>`
* `<sp>`
* `<fp>`
* `<sub>`
* `<sup>`

---
## Quiz

### How much do you know about formatting text elements?

What does the `<small>` element set the selected text to?

```html
<p>
    Some actors change their names,
    like Tom Cruise
    <small>Tom Mapother</small>.
</p>
```

* one size smaller.
* smaller and half a character below line of text.
* smaller and half a character above line of text.
* to the smallest display size.
* to the font-size of 10px.
