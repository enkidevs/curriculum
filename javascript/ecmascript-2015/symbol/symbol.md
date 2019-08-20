---
author: alexjmackey

levels:
  - medium

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout
  - deep

inAlgoPool: false

links:
  - '[ponyfoo](https://ponyfoo.com/articles/es6-symbols-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}'

---
# Symbol

---
## Content

ES6 introduced a new primitive type - `Symbol`.

Symbols are unique and immutable. These special characteristics give them a number of usages we will look at shortly.

But how do you work with symbols?

The following code creates a symbol:

```javascript
var sym = Symbol();
```

Be sure not to use the new operator when creating a symbol otherwise you will get an exception.

During creation you can also set a description for the symbol which is useful mainly for debugging purposes:

```javascript
var sym = Symbol("Enki");
console.log(sym);
// Symbol(Enki)
```

Note that supplying a description when creating a symbol does not add the symbol to the symbol registry which we will discuss shortly.

The `typeof` method, of course, returns `"symbol"`:

```javascript
typeof Symbol(); //"symbol"
```

When you create a symbol, it is unique even if there are other symbols with the same description:

```javascript
var sym1 = Symbol("Enki");
var sym2 = Symbol("Enki");
sym1 === sym2; //false
```

This probably is not what you would expect but remember `Symbol`s are always unique.

If you want to be able to access the same symbol using a key, we can use the `Symbol` registry which we will discuss next.

---
## Practice

What will be the output of the following statements ?

```javascript
const sym1 = Symbol("enki");
console.log(sym1);
// ???

console.log(typeof sym1);
// ???

const sym2 = Symbol("enki");
console.log(sym1 === sym2);
// ???
```

* Symbol(enki)
* "symbol"
* false
* true
* error
* Enki
* "enki"
* Symbol("Enki")
* "number"
* "primitive"

---
## Revision

How do you create a `Symbol`?

```javascript
// a
const sym = new Symbol("enki");

// b
const sym = Symbol.create("enki");

// c
const sym = Symbol("enki");

// d
const sym = Symbol.new("enki");
```

???

* c
* a
* b
* d
 
