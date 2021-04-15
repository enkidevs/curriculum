---
author: alexjmackey
type: normal
category: tip
links:
  - >-
    [MDN
    Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Let (Part 1)


---

## Content

`let` declares a variable and is used in a similar method to `var`.

However, a variable declared using `let` has the critical difference that the variable **exists only in block scope**. A block-scope is any code wrapped in between `{}`.

```javascript
function test() {
  if (1 == 1) {
    // variable company only
    // exists within the
    // scope of the if
    let company = "Enki";
    console.log(company); // "Enki"
  }

  console.log(company); // Error!
}
```

When `let` is used outside of a function it also will not create a global variable, contrary to `var`s behavior:

```javascript
var global = 'enki';
console.log(window.global);
// enki

let notGlobal = "Enki";
console.log(window.notGlobal);
// undefined
```


---

## Practice

Fill in the missing gaps with the output of the log statements:

```javascript
let year = 2017
{
  let year = 2018
  console.log(year)
  // ???
}
console.log(year)
// ???
```

- 2018
- 2017
- error
- year


---

## Revision

What is the output of the log statement (considering it's run in a browser):

```javascript
let enki = 'enki'
console.log(window.enki)
// ???
```

- undefined
- enki
- error
 
