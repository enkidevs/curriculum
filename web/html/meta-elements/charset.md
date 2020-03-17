---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  
---
# The `charset` Attribute
---
## Content

The HTML5 meta `charset` attribute is used to declare the character encoding of that particular page. This attribute must contain a standard IANA MIME name for character encodings. There is no specific standard encoding, however, authors are recommended to use `UTF-8`.

As a best practice, the `charset` attribute should be the first line of code within the `<head>` element.
If you choose not to put the charset in the first line you need to place it within the first 1024 bytes of the HTML because some browsers only look within that first KB before choosing the encoding.

Example:
```html
<meta
  charset="UTF-8">
```

For security reasons, authors should not use any encoding that is ASCII-incompatible. The reason is, if a browser doesn't support the encoding it may interpret the harmful content as HTML.

---
## Practice

Write the meta tag for the necessary HTML5 character set.

`<??? ???="???">`

As a best practice, where is the HTML5 character set best placed?

???

* meta
* charset
* utf-8
* First line of code within the `<head>` element.
* char
* metatag
* iso-8859-1
* 8-utf
* First line of code in the document.
* Immediately after the DOCTYPE.
* Anywhere within the `<head>` element.
* Last line of code within the `<head>` element.
* Anywhere before the first character in the document.

---
## Revision

Which line of code provides the necessary HTML5 character set?

???

* `<meta charset="utf-8">`
* `<meta charset="iso-8859-1">`
* `<charset meta="utf-8">`
* `<meta char="utf-8">`
* `<meta character="utf-8">`

---
## Quiz

### Answer a quick question about character encoding!

The `<meta charset="utf-8">` will best help the browser understand which line of code?

???

* `<p>I love a good soufflé.<p>`
* `<p><sup>1 tsp.</sup> sugar<p>`
* `<h3>The total cost was $24.50</h3>`
* `<p>Bunt cake takes 3 c. flour<p>`
 
