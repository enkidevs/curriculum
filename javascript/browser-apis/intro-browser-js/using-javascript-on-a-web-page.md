---
author: nem035
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using JavaScript on a web page


---

## Content

JavaScript is an interpreted language and needs a *host environment* such as a web browser to run (or in Node’s case, Google’s *v8 engine*).

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
  onclick="alert('hello');">
```

While these are valid approaches, both of them lead to HTML which is hard to maintain.

The common approach is to separate our JavaScript code in another file.

We can put our code in a file called *hello.js* (note we remove the script tags when we put JavaScript in another file):

```javascript
console.log("hello");
```

This script can then be referenced with the src attribute of the script tag:

```html
<script 
  src="hello.js">
</script>
```

We can even reference scripts hosted on another server – it's common to do this when working with third party libraries:

```html
<script 
  src="http://www.enki.com/hello.js">
</script>
```


---

## Practice

Complete the missing gaps in the following HTML snippet, such that the JavaScript code contained by an `enki.js` file will be run via a script tag:

```html
??? 
  ???="???" ??? 
???
```

- `<script`
- `src`
- `enki.js`
- `>`
- `</script>`
- `/>`
- `<script />`
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
- `/>`
- `<script`
- `src=`
