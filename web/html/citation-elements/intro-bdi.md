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
  - deep
  - obscura

links:
  - '[HTML <bdi> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi){documentation}'
  - '[User Agent](https://developer.mozilla.org/en-US/docs/Glossary/user_agent){documentation}'

---
# The `<bdi>` Element
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

![bdi-bad](https://img.enkipro.com/c6a662a610ff8d70ed198df581d9a4e0.png)

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

![bdi-good](https://img.enkipro.com/9d7a76a3500630482903190cd6c17f4c.png)

[Visit CodePen](https://codepen.io/enkidevs/pen/yERBoJ)

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
