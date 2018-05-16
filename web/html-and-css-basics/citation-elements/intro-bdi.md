---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10
  web.markup-text.2: 10
  web.layout-html.3: 10

aspects:
  - introduction
  - workout
  - deep
  - obscura

links:
  - '[MDN docs for bdi](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi){website}'

---
# bdi Element
---
## Content

The HTML `<bdi>`, or **The Bidirectional Isolation element** is used to isolate a span of text that might be formatted in a different direction than other text.

This element is also useful for text whose direction is unknown.

For instance, you can use this on a text that is in English(written left-right), to present it in Arabic (written right-left). The '[user agent](https://developer.mozilla.org/en-US/docs/Glossary/user_agent)'  detects then detects that the text should be rendered differently and adjusts accordingly.

Also, if you want numbers displayed properly with, for instance, Arabic, you have to use the `<bdi>` element:

Example:
```
<p>
  User:
  <bdi>ماثيو</bdi>
  428 points.
</p>

```
Result:
```
  User:
  ماثيو
  428 points.
```
On the other hand, if you don't use the `<bdi>` element, like so:
```
<p>
  User:
  ماثيو
  428 points.
</p>
```
The result would be:
```
  User:
  428
  ماثيو  
  points.
```

**Note: The `<dir>` attribute doesn't behave normally like other attributes. When nesting with `<bdi>` it defaults to`auto`, meaning the value is never inherited from the parent. So, unless you specify an `rtl` or `ltr` attribute for `dir`, the user agent will determine the correct directionality from the content of the `<bdi>` element.**

By using the `unicode-bidi : isolate` CSS rule you can achieve the same effect as with the `<bdi>` element. Nevertheless, it is always better to use the `<bdi>` because it provides important semantic meaning, whereas the CSS rule is only presentational.

This is also important because browsers can ignore CSS styling. So using `<bdi>` displays text correctly, whereas with the CSS `unicode-bidi: isolate` styling would render the text backward due to loss of styling.


---
## Practice

Which statement about the `<bdi>` element is correct?

???

* preserves unknown text direction
* displays the letters backwards.
* displays the letters mirrored.
* helps search engines understand the directory of text.

---
## Revision

Which HTML element is used to isolate a span of text that might be formatted in a different direction from other text outside it in within a multi-language document - for such languages as Arabic and Hebrew?  

???

* `<bdi>`
* `<bdo>`
* `<ltr>`
* `<rtl>`
* `<format>`
* `<lang>`

---
## Quiz

### How much do you know about text formatting in HTML?

Without the `<bdi>` element, what would happen to the Arabic username and the points?

```
<p>
  User: <bdi>ماثيو</bdi> 428 points.
</p>
```

* The points will display before the name.
* The name will not display at all.
* The name will display in front of the points.
* Nothing without CSS styles added.
