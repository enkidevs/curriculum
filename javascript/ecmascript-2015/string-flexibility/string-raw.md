---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/raw){website}'

---
# String.raw

---
## Content

`String.raw` is used to work with template strings and is best explained with an example. Knowing that in JavaScript, `\n` is used to indicate a new line, let's take a look at the following piece of code:

```javascript
console.log(`Line1\nLine2!`);
```

When executed, the code above would treat `\n` as a new line and produce:

```bash
"Line1
Line2"
```

However sometimes it is desirable to work with a string template in its raw format (without interpretation of escaped characters). `String.raw` allows you to do this - note how there is no new line between Line1 and Line2 now, just `\n`:

```javascript
console.log(String.raw`Line1\nLine2`);
// "Line1\nLine2"
```

Alternatively, we can invoke `String.raw` like a regular function, which would look something like this:
```js
String.raw({raw: 'enki'}, 0, 1, 2);
// e0n1k2i
```

The above code is the equivalent of calling:

```js
String.raw`e${0}n${1}k${2}i`
```

Note that although calling `String.raw` as a function is possible, it is the less common pattern. `String.raw` is a tag function that is predominantly used with template strings so template-string syntax is usually preferred.

---
## Practice

Fill in the gaps such that the `log` statement makes sense:

```javascript
console.log(
  String.???`A\nB???
);
// A\nB
```

* raw
* `
* raw(
* `;
* )

---
## Revision

Which `String` method is used to get the literal value of the string (without applying characters such as `\n`)?

???

* raw
* literal
* format
* rawLiteral
* unformat
 
