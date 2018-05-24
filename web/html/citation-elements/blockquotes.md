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
  - '[MDN docs for blockquotes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote){website}'
  -
---
# Blockquotes
---
## Content

The HTML `<blockquote>` element or **The Block Quotation element** is used to enclose a text which represents an extended or long quotation. This element is displayed as a block element and usually has a 1em top/bottom margin added by default, as well as a left/right indentation of 40 pixels. Of course, this is all editable with CSS styling.

Example:
```
<blockquote cite="citing page lik here">
 Every revolutionary idea seems to
 evoke three stages of reaction. <br>
 They may be summed up by the phrases:<br>
 It's completely impossible.<br>
 It's possible, but not worth doing.<br>
 I said it was a good idea all along.<br>
- Arthur C. Clarke
</blockquote>
```

If you wish to add a short quote to your web page or document, you should use the `<q>` or the **Quotation element**.
Example:
```
<q>
I have a dream!
</q>
- Martin Luther King
```

---
## Practice

Which statement about the `<blockquote>` element is correct?

```
<blockquote>
  The best thing about a boolean
  is even if you are wrong,
  you are only off by a bit.
</blockquote>
```

???

* used for indicating long quotations
* quotation marks usually added around text by browsers
* used for indicating short quotations
* used within non-quoted paragraphs
* displays as an inline element

---
## Revision

Select the default CSS style that is not typically associated with the `<blockquote>` element:

???

* display: inline;
* display: block;
* margin-top: 1em;
* margin-bottom: 1em;
* margin-left: 40px;
* margin-right: 40px;

---
## Quiz

### How much do you know about semantic HTML?

Which HTML element is used to create a section that is quoted from another source?

* `<blockquote>`
* `<q>`
* `<quote>`
* `<cite>`
