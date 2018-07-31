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
  - '[CodePen: bdi element](https://codepen.io/enkidevs/pen/yERBoJ){code}'
  - '[MDN docs for bdi](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi){website}'
  - '[MDN docs for User Agent](https://developer.mozilla.org/en-US/docs/Glossary/user_agent){website}'

---
# bdi Element
---
## Content

The HTML `<bdi>`, or the **Bidirectional Isolation** element, is used to isolate a span of text that might be formatted in a different direction than other text - typically working with languages from different languages whose direction is unknown.

For instance, you can use this on a text that is in English (written left-right), to present it in Arabic (written right-left). The '[user agent](https://developer.mozilla.org/en-US/docs/Glossary/user_agent)' detects that the text should be rendered differently and adjusts accordingly.

If you don't use the `<bdi>` element when working with alphanumeric numbers and Arabic text can you see how the code doesn't display as you would expect?:
```html
<p>
  User: ماثيو
  428 points.
</p>
```
The strange result would be:

![bdi-bad](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2252%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2252%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EUser%3A%20428%20%D9%85%D8%A7%D8%AB%D9%8A%D9%88%20points.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In order to display the numbers properly with, for instance, Arabic, here is how the `<bdi>` element fixes this issue:

Example:
```html
<p>
  User:
  <bdi>ماثيو</bdi>
  428 points.
</p>

```
bdi Result:

![bdi-good](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2252%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2252%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2218%22%20y%3D%2231%22%3EUser%3A%20%D9%85%D8%A7%D8%AB%D9%8A%D9%88%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2294%22%20y%3D%2232%22%3E428%20points.%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[Visit CodePen](https://codepen.io/enkidevs/pen/yERBoJ)-->

The CSS rule `unicode-bidi : isolate` can achieve the same effect as with the `<bdi>` element. Nevertheless, it is always better to use the `<bdi>` because it provides important semantic meaning, whereas the CSS rule is only presentational.

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

```html
<p>
  User: <bdi>ماثيو</bdi> 428 points.
</p>
```

* The points will display before the name.
* The name will not display at all.
* The name will display in front of the points.
* Nothing without CSS styles added.
