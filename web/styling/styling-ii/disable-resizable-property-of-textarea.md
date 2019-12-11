---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

aspects:
  - workout

tags:

  - textarea

  - disable

  - resizable

---

# Disable resizable property of `textarea`

---
## Content

To disable the resizing behavior of `textarea` elements, do the following:

```css
textarea {
    resize: none;
}
```
To disable some `textarea` elements, do the following:
```css
/*
note the textarea with the name, foo,
is  what will be disabled
*/
textarea[name=foo] {
    resize: none;
}
```

Note this only works when the overflow property is something other than visible, ie:

```css
overflow: scroll;
```

---
## Practice

Which of the following disables the resizing behavior of an element?

???


* `resize: none`
* `resizable: false`
* `size-alter: false`

---
## Revision

When disabling the resizing behavior of `textarea` elements, `overflow` property must be set to what value for the disabling to work?

???


* any value other than visible
* visible
* resize
* none
