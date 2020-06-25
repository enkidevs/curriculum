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
# Why use Symbols 2

---
## Content

Probably the primary use of symbols is to introduce changes into ECMAScript. We can see this in action with *iterators*.

`Symbol.iterator` is used to identify something that can be iterated over. It is used by language features such as `for of` loops to understand how to work with an object.

Don't worry too much about what the below code does just understand we are using a special built-in (referred to as well known) symbol to access the iterator functionality:

```javascript
let p = ["alex", "bill", "john"];
let it = p[Symbol.iterator]();
it.next().value; //alex
it.next().value; //bill
```

JavaScript contains many "well known symbols" that could not be accessed prior to ES6 such as `Symbol.iterator` and `Symbol.match`.

Note that you won’t find any built-in symbols in the symbol registry either:

```javascript
Symbol.keyFor(Symbol.iterator);
//undefined
```

Symbols can also implement a kind of limited (they are still accessible via other means) privacy – let's discuss this next.

---
## Practice

What special `Symbol` is used internally to implement the iteration protocol?

```javascript
let arr = ["a", "b", "c"];
let it = arr[???.???]();
console.log(it.next().value);
// a
console.log(it.next().value);
// b
```

* Symbol
* iterator
* match
* new
* it
* iterate
* symbol
* Symbol(Symbol
* iterator)
* iterate)

---
## Revision

What will the following call to the Symbol Registry return?

```javascript
console.log(Symbol.keyFor(Symbol.iterator));
// ???
```

* undefined
* null
* "Iterator"
* "iterate"
* "internalIterator"
 
