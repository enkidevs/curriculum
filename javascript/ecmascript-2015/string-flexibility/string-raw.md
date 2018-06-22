---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/raw){website}'

---
# String.raw

---
## Content

`String.raw` is used to work with template strings and is best explained with an example:

In JavaScript **\n** is used to indicate a new line.

Consider if we had the following template literal:

```javascript
`Line1\nLine2!`;
```

When output this would be interpreted as below as \n signifies a new line:

```bash
"Line1
Line2"
```

However sometimes it is desirable to work with a string template in its raw format - **String.raw** allows you to do this - note how there is no new line between Line1 and Line2 now just \n:

```javascript
String.raw`Line1\nLine2`;
// "Line1\nLine2"
```

---
## Practice

Fill in the gaps such that the `log` statement makes sense:

```javascript
console.log(
  String.???`A\nB???
)
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
 
