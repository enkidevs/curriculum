---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  - workout

links:

  - '[Hide The Scrollbar In IE](https://css-tricks.com/snippets/css/hide-scrollbar-in-edge-ie-1011/){website}'


---

# Autohiding scrollbars for **IE**

---
## Content

Note this only works in **Edge** and **IE 10/11** .
Instead of always showing a scrollbar, you can make it only show when needed :
```css
html {
  -ms-overflow-style:
    ms-autohiding-scrollbar;
}
```

---
## Revision

What's the missing command in the following CSS code which makes a scrollbar visible only when needed?

```css
html {
   -ms-overflow-style: ???;
}
```


* `ms-autohiding-scrollbar`
* `-ms-autohiding-scrollbar`
* `autohide-scrollbar`
* `show-hover-scrollbar`
* `autohiding-scrollbar-style`
