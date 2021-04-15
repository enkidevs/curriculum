---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Template Literals in
    Depth](https://ponyfoo.com/articles/es6-template-strings-in-depth){website}
  - >-
    [Template
    Literals](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Template Literals


---

## Content

A common task in any programming language is to concatenate and format strings.

You have probably found yourself writing like this many times:

```javascript
let greeting = "Hi " + name;
```

Template Literals provide a more succinct and readable form allowing us to specify values to be replaced within the string by surrounding them with curly braces and a dollar sign.

Note how the string itself is also enclosed with the *backtick* characters instead of `'` or `"`:

```javascript
let name = "Enki";
let greeting = `Hello ${name}`;
// "Hello Enki"
```

We can also use template literals to spread our declaration across multiple lines:

```javascript
let name = "User";
let greeting = `Hello ${name}
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
let x = 1;
let y = 2;
let test = `Hello ${x + y}`;
// "Hello 3"
```

Note that if for some reason you wanted to use a backtick in your expression this can be done by escaping it with a backslash e.g.

```javascript
let greeting = `hello \``;
```


---

## Practice

Fill in the template literal syntax:

```javascript
let name = 'Enki'
console.log(
  `Hello from ???`
);
```

- ${name}
- {name}
- $name
- &{name}
- %{name}
- %name
- &name


---

## Revision

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

- ${
- dayName
- }
- ${dayNumber}
- year
- dayNumber
- ${year}
- {dayNumber}
 
