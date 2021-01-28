---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[exploringjs.com](http://exploringjs.com/es6/ch_modules.html){website}'
  - >-
    [MDN -
    Export](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/export){website}
  - >-
    [MDN -
    Import](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Modules in ES6


---

## Content

In ES6, a module is stored in its own file. You can have multiple named exports in the module file:

    //{enki.js}
    export function hun(x) {
        return x * 100;
    }
    export function thou(x) {
        return x * 1000;
    }

Then, import the functions individually:

    //{main.js}
    import { thou } from 'enki';
    console.log(thou(99)); // 99000

Or, import the entire module:

    //{main.js}
    import * as enki from 'enki';
    console.log(enki.hun(99)); // 9900

You can also have a single default export:

    //{fun.js}
    export default function () { ··· }

Which you can import as:

    //{main1.js}
    import fun from 'fun';
    fun();

Note: there is no semicolon at the end of the export if you default-export a function or class.


---

## Practice

Import the `foo` function from `index.js`:

```javascript
??? { foo } from '???';
```

- import
- index
- export
- JS
- include
- enki
- log


---

## Revision

Export the `enki` function as default:

```javascript
??? ??? ??? enki() {
  console.log('enki');
}
```

- export
- default
- function
- import
- from
- fn
- return
- module
 
