---
author: Stefan-Stojanovic
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Target Link


---

## Content

Typically, a link will open another page within it's own window. This is because the default value for the target (or where the content should open) has the value of `_self`.

Typical link:

```html
<a
  href="https://www.enki.com/">
  Links opens within existing window.
</a>
```

Link with default value displayed:

```html
<a
  href="https://www.enki.com/"
  target="_self">
  Links opens within existing window.
</a>
```

[View CodePen](https://codepen.io/enkidevs/pen/OwmLVz)

The other values for the target are `target="value"`:

- _self     = (Default) Opens the link in the same tab
- _blank    = Opens the link in a new tab
- _top      = Opens the link in the full body of the window
- _parent   = Opens the link in the parent frame
- framename = Opens the link in a named frame

Example of opening the link in a different tab:

```html
<a
  href="https://www.enki.com/"
  target="_blank">
  Links opens within new tab.
</a>
```

[View CodePen](https://codepen.io/enkidevs/pen/jpmNbe)

** Note:** `_self` is only needed to open within the same tab/window when overriding conflicting code.


---

## Practice

Create a link that will open the linked page within a new tab or browser window.

```html
<??? ???="http://enki.com"
  ???="???">
<???>
```

Which of these is not a valid target value?

```html
<a href="http://enki.com"
   target="???">
</a>
```

- `a`
- `href`
- `target`
- `_blank`
- `/a`
- `_new`
- `_parent`
- `_self`
- `_top`


---

## Revision

Which line of code opens the linked page in the existing browser window?

???

- `<a href="http://enki.com">`
- `<a href="http://enki.com" target="_blank">`
- `<a href="http://enki.com" target="_same">`
- `<a href="http://enki.com" target="tab">`


---

## Quiz

### How much do you know about the HTML


`target=""`

 attribute?

Why is it rare to use this code:
`<a href="http://enki.com" target="_self">`

???

- `_self` is only needed to open within the same tab when overriding conflicting code.
- It isn't common to allow users to download your entire webpage.
- The `target="self"` is typically used to download files like PDFs.
- Everyone already knows about Enki!
