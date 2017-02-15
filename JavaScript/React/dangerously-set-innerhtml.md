# Dangerously set `innerHTML`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/tips/dangerously-set-inner-html.html){website}

---
## Content

React gives you the ability to insert *raw* HTML.

Take into  consideration that this practice is definitely to be avoided because it makes your code vulnerable to *cross-site scripting* (XSS).

 React named the prop which is used to pass this data as `dangerouslySetInnerHTML`. A key is used to specify the text with `__html`:
```
dangerouslySetInnerHTML:
{ __html: '<p>My HTML text </p>' }
```
The recommended way of using `dangerouslySetInnerHTML` when needed is by creating an object containing only the key `__html` and your *sanitized* data as the value.
```
function createMarkup()
{ return {__html: '<p>My HTML text </p>'};};
```

This method will prevent incorrect rendering.

---
## Practice

Fill the key needed for the `dangerouslySetInnerHTML` prop:
```javascript
dangerouslySetInnerHTML:
{ ???: '<p>Enki </p>' }
```

* `__html`
* `html`
* `_html`
* `value`
* `id`
* `text`

---
## Revision

Fill the key needed for the `dangerouslySetInnerHTML` prop:
```javascript
dangerouslySetInnerHTML:
{ ???: '<p>Enki </p>' }
```

* `__html`
* `html`
* `_html`
* `value`
* `id`
* `text`
