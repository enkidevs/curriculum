---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Symbol](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}
  - >-
    [getOwnPropertySymbols](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertySymbols){website}
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

# Symbol Special Properties


---

## Content

Symbols behave differently to other primitives such as strings and numbers.

Lets imagine for this section we declare the following object:

```javascript
let obj = {};
obj["company"] = "Enki";
obj[Symbol()] = "You won't see me";
```

You will find symbols are ignored in `for..in` loops:

```javascript
for (const i in obj) {
  console.log(i);
}
// company
```

Symbols do not show up in `Object.keys`:

```javascript
Object.keys(obj);
// ["company"]
```

Symbols are not returned from a call to `getOwnPropertyNames`:

```javascript
Object.getOwnPropertyNames(obj);
// ["company"]
```

`JSON.stringify` ignores symbols:

```javascript
JSON.stringify(obj);
// "{"company":"enki"}"
```

You can retrieve symbols with `getOwnPropertySymbols`:

```javascript
const objSymbols = Object.getOwnPropertySymbols(obj);
```

The `getOwnPropertySymbols` method returns an array of all the symbol properties found.

```js
console.log(objSymbols.length)
// 1

console.log(objSymbols[0])
// Symbol()
```


---

## Practice

Consider the following object:

```javascript
const obj = {};
obj[Symbol("enki")] = "hello";
```

Which of the following code snippets will return an array of all the symbol properties found?

1. `Object.getOwnPropertySymbols(obj)`
2. `Object.keys(obj)`
3. `for(var i in obj) { console.log(i)}`
4. `JSON.stringify(obj)`

???

- 1
- none
- 2
- 3
- 4


---

## Revision

What will be returned by the following call?

```javascript
const obj = {};
obj[Symbol("enki")] = 1;
obj[Symbol()] = 2;

console.log(
  Object.getOwnPropertyNames(obj)
);
// ???
```

- `[]`
- `['Symbol()']`
- `['Symbol(enki)']`
- `['Symbol()', 'Symbol(enki)']`
 
