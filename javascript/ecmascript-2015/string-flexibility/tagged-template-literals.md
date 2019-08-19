---
author: lizTheDeveloper

levels:

  - medium

  - advanced

type: normal

category: feature

inAlgoPool: false

tags:

  - new

  - workout

  - introduction

  - strings

  - es6


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'


aspects:
  - new
  - workout
  - introduction


---

# Template Strings

---
## Content

ES6 introduced a new feature called template strings that make it easier to work with strings by adding string interpolation and multi-line strings:

```js
// string interpolation
// is a fancy word for
// variable substitution
let company = "Enki";
console.log(`Hello ${company}!`);
//prints: "Hello Enki!"
```

Template literals are denoted by the `` ` `` character, rather than `''` or `""`. When you use template strings, you can have multiline strings:

```js
let aMultilineString = `
Hello
I am a multiline string
`;
```

Beyond variables, template literals actually allow us to interpolate *any* JavaScript expression, for example `${5 + 5}`. The expression will be cast to a string, then replaced inside the template string.

```js
let item = "Oranges";
let itemPrice = 2.5;
let money = 10;
let compositeString = `Hi,
I have ${money} dollars,
and I would like to purchase :
${itemPrice / money} ${item}s.
`;

console.log(compositeString);
```

The above would output:

```js
Hi,
I have 10 dollars,
and I would like to purchase :
4 Oranges.
```

---
## Practice

Complete the following code snippet to assemble a template string that says "Beam me up Scotty!"

```javascript
let what = "Beam" ;
let who = "Scotty";

let line = `??? me up ???!`;

```

* `${what}`
* `${who}`
* `#{who}`
* `%s`
* `$(who)`
* `#(who)`
* `#{what}`
* `%s`
* `$(what)`
* `#(what)`

---
## Revision

Complete the following code snippet to assemble a template string that says `"Stay Hungry Stay Foolish"`.

```javascript
let attr = "Hungry" ;
let attr2 = "Foolish";

let line = `Stay ??? Stay ???`;

```

* `${attr}`
* `${attr2}`
* `#{attr}`
* `%s`
* `$(attr)`
* `#(attr)`
* `#{attr2}`
* `%s`
* `$(attr2)`
* `#(attr2)`

 
