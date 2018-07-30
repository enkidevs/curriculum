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
  - '[CodePen :root selector](https://codepen.io/enkidevs/pen/zLqrRE){code}'
  - '[MDN docs for html](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html){website}'

---
# The `html` Element
---
## Content

The HTML `<html>` element is the root (top-level element) of an HTML document and is the primary container for all of the other elements in the documents, which are they descendants of this one element. 

Within every `<html>` element are two primary elements:
* `<head>`: Data useful for the page.
* `<body>`: The content of the page itself.

Example:
```
<!DOCTYPE html>
<html lang="en-GB">
  <head>...</head>
  <body>...</body>
</html>
```

The `lang` attribute is useful for helping both search engines and screen readers determine the proper language of the text on the page. When the `lang` attribute is not included, screen readers will use the operating system's set language, which isn't always the best because it may not provide the proper accents and pronunciation.

The `<html>` element is easily modifiable with CSS by using either the `html` or the `:root` selector. They selectors are identical, except that the `:root` selector's specificity is higher (meaning it will override `html`).

For instance, by adding the CSS:
```
:root {
    background: #ff0000;
}
html {
    background: #0000ff;
}

```
<!--[View CodePen](https://codepen.io/enkidevs/pen/zLqrRE)-->

we change the background color of the `:root` to red, and even though the `html` has been set to blue, the `:root` style overrides it. 

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
