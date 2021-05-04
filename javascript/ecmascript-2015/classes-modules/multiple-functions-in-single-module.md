---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN -
    Import](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import){website}
  - >-
    [MDN -
    Export](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/export){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Multiple Functions in Single Module


---

## Content

A module always exists in one file but within this file we can declare multiple functions.

Let's expand upon our example and add a second function called triple.

We will again use the **export** keyword to let JavaScript know we want to expose this:

```javascript
export function triple(x) {
 return x * 3;
}
```

If we just want to just use specific functions from a module we can do so with the following syntax:

```javascript
import { triple as mathFuncs }
from 'mathFuncs';
mathFuncs(2); //6
```

As we have seen we can alias the module imported which is especially useful if it has a really long name:

```javascript
import {p as shortName} from
'modWithReallyLongNames';
```

There are numerous other ways we can export functions:

```javascript
export { dbl, triple };
export { dbl as double};
```

We can also declare a single default function or class to be exported by using the default keyword:

```javascript
export default person { ··· }
```

When we want to use this in another file we would use the following:

```javascript
import person from 'person';
```

Note that modules like variables are hoisted but imports and exports must exist at the top level of a module and cannot be conditional so the below is invalid:

```javascript
if (condition) {
 import 'double'; //error
}
```


---

## Practice

The first snippet below represents the module file that should export two functions. The second represents the file in which the module functions are imported.

Fill in the gaps on both snippets such that the log statements hold true:

Utilities module:

```javascript
// utils.js

function add(x, y) {
  return x + y;
}

function subtract(x, y) {
  return x - y;
}

??? ???, ???;
```

Main file:

```javascript
??? {
  add ??? addTwo,
  subtract ???
} ??? 'utils'

console.log(addTwo(2, 4))
// 6
console.log(subtractTwo(5, 3))
// 2
```

- export
- { add
- subtract }
- import
- as
- as subtractTwo
- from
- add
- subtract
- modules.exports
- {
- }
- require
- path


---

## Revision

Fill in the gaps such that the `log` file is exported properly and can be imported as shown:

Module file:

```javascript
// logger.js
??? ??? function log() {
  console.log('My log')
}
```

Main file:

```javascript
??? log ??? simpleLog
  ??? 'logger'
```

- export
- default
- import
- as
- from
- require
- exports
- exposes
- default export
- module.exports
- export.log
- name
- path
- get
- rename
 
