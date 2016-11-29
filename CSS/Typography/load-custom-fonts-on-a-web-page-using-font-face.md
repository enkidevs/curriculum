# Load custom fonts on a web page using `@font-face`
author: vbaron

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - custom font

  - font-face

links:

  - >-
    [css-tricks.com](https://css-tricks.com/snippets/css/using-font-face/){website}

---
## Content

Custom fonts are hosted server-side and downloaded then displayed using CSS.

Example:

```
@font-face {
  font-family: 'MyCustomFont';
      /* IE9 Compat Modes */
  src: url('webfont.eot'), 
      /* Firefox, Chrome, Opera, Edge*/
  url('webfont.woff2') format('woff2'),
      /* Fallback */
  url('webfont.woff') format('woff'),
      /* Supported by all browsers
         but Opera Mini */
  url('webfont.ttf')  format('truetype');
}
```
Style elements using:

```
a {font-family: 'MyCustomFont',
 Fallback, sans-serif;}```

---
## Practice

Which of the following font format is supported by most browsers?

???
*`truetype` 
*`woff` 
*`woff2` 
*`eot`

---
## Revision

When using custom fonts with `@font-face`, what is the missing keyword in the following CSS code? 
```css
p {
   font-family: 'enkiFont', 
     ???, sans-serif;
} 
```
* Fallback
* Type
* Next-font
* Inline
* Absolute