---
author: shoutmatt

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

links:
  - '[CodePen: Element wbr (1)](https://codepen.io/enkidevs/pen/rrjxao){code}'
  - '[CodePen: Element wbr (2)](https://codepen.io/enkidevs/pen/wxgMKr){code}'
  - '[CodePen: Element wbr (3)](https://codepen.io/shoutmatt/pen/gGxNJa){code}'

tags:
  - deep

---
# Intro wbr
---
## Content

The HTML `<wbr>`, or sometimes referred to as the **Line Break Opportunity** element, is used to indicate a position in a text where the browser 'may' break a line. 

You can use this to tell the browser that it can break a line in a place the browser wouldn't normally do it. Also, by doing so, you make the browser only break where the `<wbr>` element is. This means, for instance if you have a link where only the last word of the link doesn't fit the browser window and you have a `<wbr>` element at the middle of that link, as soon as the link can't fit the browsers breaks it at the `<wbr>` elements position.

Let's say you have this link:
```
<p>
  http://www.enkipro.com/path/filename.html
</p>
```
If you add a `<wbr>` element before the word `path` like so: `<wbr>/path/filename.html`, then as soon as the link doesn't fit the browser's window, the browser creates a line break like so:

![element-wbr](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2274%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2274%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3Ehttp%3A%2F%2Fwww.enkipro.com%2F%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Epath%2Ffilename.html%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/rrjxao)-->

Here's another example of adding a `<wbr>` element to a long word to tell the browser where to break in case it doesn't fit the screen.

Lets take the unusually long name for a town in northern Wales, England.

Name: **Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch**.

Example with a `<wbr>` element between `Llanfairpwllgwyngyllgogerychwyrn` and `drobwllllantysiliogogogoch`:

![element-wbr-2](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2274%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2274%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2234%22%3ELlanfairpwllgwyngyllgogerychwyrn%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2220%22%20y%3D%2253%22%3Edrobwllllantysiliogogogoch%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/wxgMKr)-->

**Note:** Don't confused `<wbr>` with the `<br>` element. The `<br>` elements always creates a line break, whereas the `<wbr>` only specifies the position where the line should break if it needs to.

---
## Practice

Mark the true statement regarding the `<wbr>` element.

```
<p>
  http://www.enkipro.com/
  <wbr>path/filename.html
</p>
```

???

* `<wbr>` refers to 'line break opportunity'.
* `<wbr>` stands for 'Will Break Rows'.
* `<wbr>` will force a line break.
* `<wbr>` works best with a very long sentence. 

---
## Revision

Which HTML element represents a line breaking opportunity?

```
<p>
  http://www.enkipro.com/
  <???>path/filename.html
</p>
```

* wbr
* br
* lbo
* linebreak
* break
* nl

---
## Quiz

### How much do you know about the `<wbr>` element?

Mark the following statements that are true regarding the `<wbr>` element.

```
<p>
  http://www.enkipro.com/
  <wbr>path/filename.html
</p>
```

???

* `<wbr>` refers to 'line break opportunity'.
* browser will only add line-break at `<wbr>` when necessary.
* a line break is forced in a long string at the `<wbr>`.
* `<wbr>` adds additional information within URL paths.

