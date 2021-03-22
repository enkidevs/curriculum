---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[www.2ality.com](http://www.2ality.com/2015/01/es6-strings.html){website}'
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Strings in ES6


---

## Content

ES6 introduces many new `String` methods.

You can **interpolate** template strings:

    let first = `En`;
    let last = `Ki`;
    console.log(`Hello ${first} ${last}!`); 
    // Hello En Ki!

Template strings can contain **multiple lines**:

    let multiLine = `
    The string
    has
    multiple lines`;

Template strings are **raw** if you use the tag `String.raw` as a prefix:

    // special characters like 
    // '\' are not special
    let raw = String.raw(`no newline: \n`); 

You can check whether a string **exists within** another string:

    `Enki`.startsWith(`Enk`) // true
    `Enki`.endsWith(`ki`) // true
    `Enki`.includes(`nk`) // true

You can **repeat** strings:

    'hi '.repeat(2) // 'hi hi '


---

## Practice

What does the following code snippet output? ???

```javascript
let first = `Questions`;
let last = `Practice`;

console.log(`Time for ${last} ${first}!`);
```

- Time for Practice Questions!
- Time for Questions Practice!
- Time for ${last} ${first}!
- Time for !


---

## Revision

What's the result of this:

```javascript
`Enki`.includes(`nk`)
// ???
```

- true
- false
- (2,3)
- (1,2)
 
