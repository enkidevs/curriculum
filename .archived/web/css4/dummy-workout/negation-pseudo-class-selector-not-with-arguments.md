---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - css4

links:

  - '[css4.rocks](http://css4.rocks/selectors-level-4/){website}'

---
# Negation pseudo-class selector `:not` with arguments

---
## Content

The `:not` pseudo-class is used to specify that you don't want styles applied to a particular element.

To make all text bold except that with classes  `intro` and `active` use:
```
p:not(.intro,.active){
    font-weight: bold;
}
```

---
## Revision

What does the following CSS code do? ???
```css
p:not(.enki) {
   font-size: 12px;
}
```
* Sets the font size to 12px for all p elements except with the class `.enki`.
* Sets the font size to 12px for p elements using class `.enki`.
* Sets the font size to 12px to all elements.
* Doesn't set the font size to 12px for any elements.