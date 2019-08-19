---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-template-strings-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){website}'

standards:
  javascript.es6-extensions-standard-library.2: 10
---
# Template Literals

---
## Content

A common task in any programming language is to concatenate and format strings.

You have probably found yourself writing code similar to the following many times:

```javascript
var greeting = "Hi " + name;
```

Template Literals provide a more succinct and readable form allowing us to specify values to be replaced within the string by surrounding it with curly braces and a dollar sign.

Note how the string itself is also enclosed with the *backtick* characters instead of ' or ":

```javascript
var name = "Enki";
var greeting = `Hello ${name}`;
// "Hello Enki"
```

We can also use template literals to spread our declaration across multiple lines:

```javascript
var name = "User";
var greeting = `Hello ${name}
Line1
Line2`;

/*
"Hello User
Line1
Line2"
*/
```

We can even use expressions within the placeholders:

```javascript
var x = 1;
var y = 2;
var test = `Hello ${x + y}`;
//Hello 3
```

Note if for some reason you wanted to use a backtick in your expression this can be done by escaping it with a backslash e.g.

```javascript
var greeting = `hello \``;
```

---
## Practice

Complete the gaps such that the log is correct:

```javascript

const dayName = 'Thursday'
const dayNumber = '12';
const year = '2018'

const str = `Today is:
??? ??? ???
???
${???}
`

console.log(str)
// Today is:
// Thursday
// 12
// 2018
```

* ${
* dayName
* }
* ${dayNumber}
* year
* dayNumber
* ${dayName}
* ${year}
* ${dayNumber

---
## Revision

Fill in the template literal syntax:

```javascript
var name = 'Enki'
console.log(`Hello from ???`)
```

* ${name}
* {name}
* $name
* &{name}
* %{name}
* %name
* &name
