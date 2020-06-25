---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout

tags:

  - css

  - font-variant

  - small-caps

  - font


links:

  - '[Font Variant](https://css-tricks.com/almanac/properties/f/font-variant/){website}'
  - '[MDN Docs on Font Variant](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-variant){documentation}'


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

![HtmlToSvg.svg](https://img.enkipro.com/72b08450670bbbb282edc74f75bb9d82.png)

---
## Revision

What must the font-variant property be set to transform the text to small caps?

???


* `small-caps`
* `smallcaps`
* `small_caps`
