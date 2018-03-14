---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice


links:

  - '[sass-lang.com](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#color_operations){website}'


---

# SassScript Color Operations

---
## Content

*SassScript's* arithmetic operations are supported for all color values, they perform on each component of a color in order.

The operation will be performed on the red, blue and green components respectively.

```CSS
p {
  color: #080200 + #010501;
}
```
Would be computed as:
```CSS
08 + 01 = 09
02 + 05 = 07
00 + 01 = 01
```
And then compiled to:
```CSS
p {
  color: #090701
}
```
Colours with an alpha channel must have the same alpha value for color arithmetic to work. The arithmetic operation does not affect the alpha value.
```CSS
p {
  color: rgba(255, 0, 100, 0.75) + 
         rgba(0, 255, 0, 0.75);
}
```
Compiles to:
```CSS
p {
  color: rgba(255, 255, 100, 0.75); }
```

---
## Practice

What does the following code snippet compile to?

```css
p { 
  color: #810421 + #010511; 
} 
/* Compiles to */
p {
   color: ???;
}
```

* `#820932` 
* `#800110` 
* `810421`

---
## Revision

What's the result of the following operation?
```css
p {
  color: #001000 + #000034;
}
```
To:
```css
p {
  color: ???;
}
```


* `#001034`
* `#341000`
* `#000034`

