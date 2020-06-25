---
author: shoutmatt

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

aspects:
  - introduction

links:

tags:
  - deep

---
# Intro `<wbr>`
---
## Content

The HTML `<wbr>`, or sometimes referred to as the **Line Break Opportunity** element, is used to indicate a position in a text where the browser 'may' break a line.

You can use this to tell the browser that it can break a line in a place the browser wouldn't normally do it. Also, by doing so, you make the browser only break where the `<wbr>` element is. This means, for instance if you have a link where only the last word of the link doesn't fit the browser window and you have a `<wbr>` element at the middle of that link, as soon as the link can't fit the browsers breaks it at the `<wbr>` elements position.

Let's say you have this link:
```html
<p>
  http://www.enkipro.com/path/filename.html
</p>
```
If you add a `<wbr>` element before the word `path` like so: `<wbr>/path/filename.html`, then as soon as the link doesn't fit the browser's window, the browser creates a line break like so:

![element-wbr](https://img.enkipro.com/5e0abaf7481bbb0598849b05f1761414.png)

[View CodePen](https://codepen.io/enkidevs/pen/rrjxao)

Here's another example of adding a `<wbr>` element to a long word to tell the browser where to break in case it doesn't fit the screen.

Lets take the unusually long name for a town in northern Wales, UK.

Name: **Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch**.

Example with a `<wbr>` element between `Llanfairpwllgwyngyllgogerychwyrn` and `drobwllllantysiliogogogoch`:

![element-wbr-2](https://img.enkipro.com/585172af209d801b72c3973db1899a1f.png)

[View CodePen](https://codepen.io/enkidevs/pen/wxgMKr)

**Note:** Don't confused `<wbr>` with the `<br>` element. The `<br>` elements always creates a line break, whereas the `<wbr>` only specifies the position where the line should break if it needs to.

---
## Practice

Mark the true statement regarding the `<wbr>` element.

```html
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

```html
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

```html
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
