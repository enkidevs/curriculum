---
author: alexjmackey
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Types - Introduction


---

## Content

JavaScript has the following primitive types:

- `undefined`
- `null`
- `boolean`
- `number`
- `string`
- `symbol`

The main non-primitive type is `Object`.

There are also a few special types - `Array`, `Date`, `RegExp` - that are types of `Object` but included out of the box.

### typeof

You can check the type of a value by using the `typeof` operator e.g.

```javascript
let company = "enki";
typeof company; // "string"
```

### Dynamic Types

Unlike some other languages you do not need to tell JavaScript what type a variable is when declaring it:

```javascript
// because we assign a string
let name = "john smith";

// JavaScript knows its a string
typeof name; // "string"
```

Javascript's typing is dynamic which means you can also change a variable's type at any time:

```javascript
let name = "john smith";

// change string to number
name = 5;
typeof name; // "number"
```


---

## Practice

Which one of the following is **not** a primitive type:

???

- RegExp
- symbol
- string
- number


---

## Revision

Can you change a variable's type in JavaScript?

???

- yes
- no
- only if you declare it again
