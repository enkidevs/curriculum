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


links:
  - '[HTML <blockquotes> element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote){documentation}'
  
---
# The `<blockquotes>` Element
---
## Content

The HTML `<blockquote>` element or the **Block Quotation** element is used to enclose text which represents an extended or long quotation. This element is displayed as a block element and usually has a 1em top/bottom margin added by default, as well as a left/right indentation of 40 pixels. Of course, this is all editable with CSS styling.

Example:
```html
<blockquote>
 Every revolutionary idea seems to
 evoke three stages of reaction.<br>
 They may be summed up by the phrases:<br>
 It's completely impossible.<br>
 It's possible, but not worth doing.<br>
 I said it was a good idea all along.<br>
- Arthur C. Clarke
</blockquote>
```

![blockquote-simple](https://img.enkipro.com/de96f330200a0ca38850a2523ed01b92.png)

Blockquotes can be used with the citation element `<cite>` to share the source, but it is important that there is also visible attribution as well.

```html
<blockquote cite="http://brainyquote.com/
quotes/arthur_c_clarke_408582">
Every revolutionary idea seems to
evoke three stages of reaction.<br>
They may be summed up by the phrases:<br>
It's completely impossible.<br>
It's possible, but not worth doing.<br>
I said it was a good idea all along.<br>
  <footer>
    —<a href="https://brainyquote.com/
quotes/arthur_c_clarke_408582">
  Arthur C. Clarke
     </a>
  </footer>
</blockquote>
```

![blockquote-with-cite](https://img.enkipro.com/f702ae2ea6852ec747ae0ee7518ea83b.png)

If you wish to add a short quote to your web page or document, you should use the `<q>` or the **Quotation element**.
Example:
```html
<q>I have a dream!</q>
- Martin Luther King
```

![quotes](https://img.enkipro.com/39616c8208d10dc2a7a1e12291a5b015.png)

[View CodePen](https://codepen.io/enkidevs/pen/oyPQBr)

---
## Practice

Which statement about the `<blockquote>` element is correct?

```html
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
