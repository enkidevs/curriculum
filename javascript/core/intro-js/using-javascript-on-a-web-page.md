---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  js.javascript-syntax.2: 10




---

# Using JavaScript on a web page

---
## Content

JavaScript is an interpreted language and needs a *host environment* such as a web browser to run (or in Node’s case, Google’s *v8 engine*).

There are a number of ways to use JavaScript on a web page.

One way is inline with the **script** tag:

```
<script>
console.log("hello");
</script>
```

Another, on html elements directly: 
```
<input
type="button" 
value="test" 
onclick="alert('hello');" 
/>
```

Whilst these are valid approaches, both of them lead to HTML which is hard to maintain.

It is generally better to put our JavaScript code in another file.

We can put our code in a file called *hello.js* (note we remove the script tags when we put JavaScript in another file):

```
console.log("hello");

```

This script can then be referenced with the src attribute of the script tag:

```
<script src="hello.js" />
```
We can even reference scripts hosted on another server – it's common to do this when working with third party libraries:

```
<script 
src="http://www.enki.com/hello.js" />
```

---
## Revision

Complete the tags missing to make the JavaScript code run directly on the web page.

```
???
console.log("enki");
???
```


* `<script>`
* `</script>`
* `<script/>`
* `/>`
* `<script`
* `src=`

