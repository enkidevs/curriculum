# Use pseudo-elements to style specific parts of an element
author: priyankinirmal

levels:

  - basic

type: normal

category: pattern

tags:

  - css

  - pseudo-elements

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-elements){website}

---
## Content

Pseudo-elements are preceded by two colons `::`. 

The syntax is as follows:
```css
selector::pseudo-element {
  property: value;
}
``` 
An example of a pseudo-element is `::before`. This will create and style a pseudo-element placed before the real element.

The full list of pseudo-elements is:
- `::before`: comes before the element's content.
- `::after`: comes after the element's content.
- `::first-letter`: targets the first letter of a paragraph.
- `::first-line`: targets the first line of a paragraph.
- `::selection`: targets a portion that is selected by the user.

It is worth noting that some browsers don't support `::before` and `::after` pseudo-elements for `img` and `input` fields.

---
## Practice

Which of the following is NOT a pseudo-element? 

???

*`::first-paragraph` 
*`::first-line` 
*`::first-letter` 
*`::before`

---
## Revision

What are all pseudo-elements preceded by? 
???
* `::`
* `;;`
* `:`
* `-`
* `;`