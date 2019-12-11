---
author: vbaron

levels:

  - basic

  - advanced

  - medium

type: normal

aspects:
  - workout
  - deep

category: how to

tags:

  - custom font

  - font-face


links:

  - '[Article on @font-face](https://css-tricks.com/snippets/css/using-font-face/){article}'


---

# Load custom fonts on a web page using `@font-face`

---
## Content

Custom fonts are hosted server-side and downloaded then displayed using CSS.

Example:

```css
@font-face {
font-family: 'MyCustomFont';
src: /* Firefox, Chrome, Opera, Edge*/
  url('webfont.woff2') format('woff2'),
  url('webfont.woff') format('woff'),
    /* Supported by all browsers
       but Opera Mini */
  url('webfont.ttf')  format('truetype');
}
```
Style elements using:
```css
a {
 font-family: 'MyCustomFont', sans-serif;
}
```
In case the custom font import failed, *sans-serif* will be used as the fallback font.

---
## Practice

Which of the following font format is supported by most browsers?

???

* `truetype`
* `woff`
* `woff2`
* `eot`

---
## Revision

Consider the following snippet:
```css
p {
   font-family: 'enkiFont',
       sans-serif;
}
```
When using custom fonts with `@font-face`, `sans-serif` is considered to be the

???.

* fallback font
* italic font
* next font
* inline font
