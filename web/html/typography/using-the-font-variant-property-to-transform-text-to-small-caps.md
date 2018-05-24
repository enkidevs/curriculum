---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - css

  - font-variant

  - small-caps

  - font


links:

  - '[css-tricks.com](https://css-tricks.com/almanac/properties/f/font-variant/){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-variant){documentation}'


---

# Using the `font-variant` property to transform text to small caps

---
## Content

The `small-caps` keyword forces the use of small capital letters for lower case characters. Some fonts might not support this.
```css
p.smallcaps {
  font-variant: small-caps;
}
```

For example, if the property is applied on the following html code:
```html
<p class="smallcaps"> Hello World </p>
```
All letters will be displayed in upper-case and the original lower-case letters will remain the same size as they would have been in lower-case.

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Crect%20x=%220%22%20y=%220%22%20width=%22612%22%20height=%22200%22%20fill=%22#596193%22/%3E%0A%3Ctext%20x=%2230%22%20y=%2260%22%20style=%22font-size:35px;fill:%20#fff;%20font-family:'Roboto',%20sans-serif;%22%3EThis%20is%20a%20normal%20font-variant.%3C/text%3E%0A%3Ctext%20x=%2230%22%20y=%22160%22%20style=%22font-size:35px;fill:%20#fff;%20font-family:'Roboto',%20sans-serif;font-variant:small-caps;%22%3EThis%20is%20font-variant:%20small-caps.%3C/text%3E%3C/svg%3E%0A)

---
## Revision

What must the font-variant property be set to transform the text to small caps? 

???


* `small-caps`
* `smallcaps`
* `small_caps`

