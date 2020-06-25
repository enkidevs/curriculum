---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout
  - deep

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}'

---
# Symbol Special Properties

---
## Content

Symbols behave differently to other primitives such as strings and numbers.

Lets imagine for this section we declare the following object:

```javascript
var obj = {};
obj["company"] = "Enki";
obj[Symbol()] = "You won't see me";
```

You will find symbols are ignored in `for..in` loops:

```javascript
for (var i in obj) {
  console.log(i);
}
//company
```

Symbols do not show up in `Object.keys`:

```javascript
Object.keys(obj);
//["company"]
```

Symbols are not returned from a call to `getOwnPropertyNames`:

```javascript
Object.getOwnPropertyNames(obj);
//["company"]
```

`JSON.stringify` ignores symbols:

```javascript
JSON.stringify(obj);
//"{"company":"enki"}"
```

You can retrieve symbols with `getOwnPropertySymbols`:

```javascript
Object.getOwnPropertySymbols(obj);
```

---
## Practice

Consider the following object:

```javascript
const obj = {};
obj[Symbol("enki")] = "hello";
```

Which of the following code snippets will return the symbol key when called?

1. `Object.keys(obj)`
2. `for(var i in obj) { console.log(i)}`
3. `JSON.stringify(obj)`
4. `Object.getOwnPropertySymbols(obj)`

???

* none
* 1
* 2
* 3
* 4
* 1 and 2
* 2 and 4
* 2 and 3
* 1 and 4
* 1 and 3
* 3 and 4
* 1, 2 and 3
* 1, 3 and 4
* 1, 2 and 4
* 1, 2, 3 and 4
* 2, 3 and 4

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

* []
* ['Symbol()']
* ['Symbol(enki)']
* ['Symbol()', 'Symbol(enki)']
 
