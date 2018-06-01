---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.javascript-syntax.2: 10

tags:
  - introduction
---

# Using JavaScript on a web page

---

## Content

JavaScript is an interpreted language and needs a _host environment_ such as a web browser to run (or in Node’s case, Google’s _v8 engine_).

There are a number of ways to use JavaScript on a web page.

One way is inline with the **script** tag:

```html
<script>
console.log("hello");
</script>
```

Another, on HTML elements directly:

```html
<input
  type="button"
  value="test"
  onclick="alert('hello');"
/>
```

Whilst these are valid approaches, both of them lead to HTML which is hard to maintain.

It is generally better to put our JavaScript code in another file.

We can put our code in a file called _hello.js_ (note we remove the script tags when we put JavaScript in another file):

```javascript
console.log("hello");
```

This script can then be referenced with the src attribute of the script tag:

```html
<script src="hello.js" />
```

We can even reference scripts hosted on another server – it's common to do this when working with third party libraries:

```html
<script
  src="http://www.enki.com/hello.js"
/>
```

---

## Practice

Complete the missing gaps in the following HTML snippet such that JavaScript code contained by an `enki.js` file will be ran via a script tag:

```html
??? ???="???" ???
```

- `<script`
- src
- enki.js
- />
- `<script />`
- `</script>`
- `<script>`

---

## Revision

Complete the missing HTML tags to make the JavaScript code run directly on the web page.

```html
???
console.log("enki");
???
```

- `<script>`
- `</script>`
- `<script/>`
- />
- `<script`
- src=
