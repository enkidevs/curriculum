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
  - '[CodePen: Blockquote & Cite](https://codepen.io/enkidevs/pen/oyPQBr){code}'
  - '[MDN docs for blockquotes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote){website}'
---
# Blockquotes
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

![blockquote-simple](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22170%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22170%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EEvery%20revolutionary%20idea%20seems%20to%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2248%22%3Eevoke%20three%20stages%20of%20reaction.%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2265%22%3EThey%20may%20be%20summed%20up%20by%20the%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2282%22%3Ephrases%3A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2299%22%3EIt%26apos%3Bs%20completely%20impossible.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22116%22%3EIt%26apos%3Bs%20possible%2C%20but%20not%20worth%20doing.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22133%22%3EI%20said%20it%20was%20a%20good%20idea%20all%20along.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22150%22%3E-%20Arthur%20C.%20Clarke%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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

![blockquote-with-cite](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22170%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22170%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%20fill%3D%22%23000%22%3EEvery%20revolutionary%20idea%20seems%20to%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2248%22%20fill%3D%22%23000%22%3Eevoke%20three%20stages%20of%20reaction.%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2265%22%20fill%3D%22%23000%22%3EThey%20may%20be%20summed%20up%20by%20the%20%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2282%22%20fill%3D%22%23000%22%3Ephrases%3A%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%2299%22%20fill%3D%22%23000%22%3EIt%26apos%3Bs%20completely%20impossible.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22116%22%20fill%3D%22%23000%22%3EIt%26apos%3Bs%20possible%2C%20but%20not%20worth%20doing.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22133%22%20fill%3D%22%23000%22%3EI%20said%20it%20was%20a%20good%20idea%20all%20along.%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2218%22%20y%3D%22150%22%20fill%3D%22%230001EE%22%3E-%20Arthur%20C.%20Clarke%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M17.5%20152.5h124%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

If you wish to add a short quote to your web page or document, you should use the `<q>` or the **Quotation element**.
Example:
```html
<q>I have a dream!</q>
- Martin Luther King
```

![quotes](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2250%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2250%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2232%22%3E%E2%80%9CI%20have%20a%20dream!%E2%80%9D%20-%20Martin%20Luther%20King%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/oyPQBr) -->

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
