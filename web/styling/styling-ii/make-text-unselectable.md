---
author: SeanWalters
type: normal
category: how-to
tags:
  - NoSelection
links:
  - >-
    [Disable Text
    Selection](http://stackoverflow.com/questions/826782/css-rule-to-disable-text-selection-highlighting){discussion}
  - '[WebKit](http://caniuse.com/#search=webkit){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Make text unselectable


---

## Content

This is a method in CSS to make text in a web page unselectable.

```css
.noselect {
  user-select: none;
}
```

Once the class is assigned to a paragraph like below, the text will no longer be selectable.

```html
<p>
  Selectable text.
</p>
```

```html
<p class="noselect">
  Unselectable text.
</p>
```


---

## Practice

Complete the method which can be used to make text in a web page unselectable:

```css
.unselectable {
  ???: none;
}
```

- `user-select`
- `selectable`
- `select`


---

## Revision

What does the following CSS code do?

```css
.noselect {
   user-select: none;
}

<p class="noselect">
   Hello, from Enki!
</p>
```

???

- `It makes the contents of <p> unable to be selected.`
- `It makes the contents of <p> able to be selected.`
- `It changes the colour of <p>'s contents.`
- `It automatically highlights the contents of <p>.`
