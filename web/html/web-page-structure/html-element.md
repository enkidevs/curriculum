---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.3: 10
  web.syntax-html.4: 10
  web.syntax-html.5: 10

aspects:
  - introduction

links:
  - '[MDN docs for html](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html){website}'

---
# The `html` Element
---
## Content

The HTML `<html>`, or, **The HTML Document/Root Element** is used to represent the root of an HTML document.

The `<html>` element is called the `root` element because it has to be on the top of a document. Also, it is the single HTML element that contains every other HTML element. This means all other elements have to be descendants of the `<html>` element.

Example:
```
<!DOCTYPE html>
<html lang="en-GB">
  <head>...</head>
  <body>...</body>
</html>
```

Adding the `lang` attribute with a valid language tag is very important for helping screen readers determine the proper language. Also, the `lang` attributes value should describe a language which is used in the majority of the content of the page. On the other hand, if you do not include the `lang` attribute, screen readers will use the operating system's set language, which is not good, because it can cause mispronunciations.

Furthermore, if you include a valid `lang` in the `<html>` element, you ensure all metadata will be announced properly.

Also, the `<html>` element is easily modifiable with CSS by using the `:root` selector.
For instance, by adding the CSS:
```
:root {
    background: #ff0000;
}
```
we change the background color of the whole html page into red.

---
## Practice

What is meant by the html element being the root of an HTML page?

???

* It's the single HTML element that contains every other HTML element.
* It is the deepest node of a tree of HTML nodes.
* It represents every HTML attribute specified.
* It provides a simple fix to the issues of the browser wars of the 1990s.  

---
## Revision

What is the root element of an HTML document?

???

What HTML element is best to assign the document’s primary language?

`<??? lang="en-GB">`

* `<html>`
* `html`
* `<head>`
* `<body>`
* `<root>`
* `tree`
* `head`
* `body`

---
## Quiz

### How much do you know about using CSS with HTML?

Using a `:root` selector in CSS will target which HTML element?

???

* `<html>`
* `<body>`
* `<head>`
* `<main>`
* `<root>`
* every HTML element
