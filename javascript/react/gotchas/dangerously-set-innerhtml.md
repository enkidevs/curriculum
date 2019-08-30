---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


links:

  - '[facebook.github.io](https://facebook.github.io/react/tips/dangerously-set-inner-html.html){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Dangerously set `innerHTML`

---
## Content

React gives you the ability to insert *raw* HTML.

Take into consideration that this practice is definitely to be avoided because it makes your code vulnerable to *cross-site scripting* (XSS).

React named the prop which is used to pass this data as `dangerouslySetInnerHTML`. A key is used to specify the text with `__html`:

```jsx
dangerouslySetInnerHTML: {
  __html: "<p>My HTML text </p>";
}
```

The recommended way of using `dangerouslySetInnerHTML` when needed is by creating an object containing only the key `__html` and your *sanitized*[1] data as the value.

```jsx
function createMarkup() {
  return { __html: "<p>My HTML text </p>" };
}
```

The next step is to pass the `createMarkup()` function as a value for your `dangerouslySetInnerHTML` prop:

```jsx
<div
  dangerouslySetInnerHTML={createMarkup()}
/>
```

This method will prevent incorrect rendering.

Let's say that you mistakenly write the following code:

```jsx
<div
  dangerouslySetInnerHTML={getUsername()}
/>
```

Fortunately, this will not render because `getUsername()` would return a string, but `dangerouslySetInnerHTML` expects and object of the type `__html: ''`. By using a function to return the wrapper object we ensure that only *sanitized* data is returned. For this same reason, we also recommend against writing this type of code:

```jsx
<div
  dangerouslySetInnerHTML={{
    __html: getMarkup()
  }}
/>
```

---
## Practice

Fill the key needed for the `dangerouslySetInnerHTML` prop:
```javascript
dangerouslySetInnerHTML: {
  ???: '<p>Enki </p>';
}
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
dangerouslySetInnerHTML: {
  ???: '<p>Enki </p>';
}
```


* `__html`
* `html`
* `_html`
* `value`
* `id`
* `text`

---
## Footnotes

[1: Sanitization]
The process of HTML sanitization represents examining your HTML document and creating a new document such that you only preserve tags that are designated as "safe" or desired. This process can help protect against cross-site scripting (XSS) attacks by sanitizing any HTML code submitted by a user.