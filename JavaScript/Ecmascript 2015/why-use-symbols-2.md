# Why use Symbols 2
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-symbols-in-depth)'

---
## Content

Probably Symbols main use is to introduce changes into EcmaScript - this approach for example is used by ES6 with iterators for example.

**Symbol.iterator** is used to identify something that can be iterated over and other language features such as for of loops look for this symbol to understand how to work with an object.

Don’t worry too much about what the below code does just understand we are using a special inbuilt (referred to as well known) symbol to access this functionality:

```
let people = ["alex","bill","john"];
let iterator = people[Symbol.iterator]();
iterator.next().value; //alex
iterator.next().value; //bill
```

JavaScript contains a number of these "well known symbols" that couldn’t be accessed prior to ES6 such as Symbol.iterator and Symbol.match. Note you won’t find any well-known symbols in the symbol registry either:

```
Symbol.keyFor(Symbol.iterator); //undefined
```

Symbols can also implement a kind of limited (they are still accessible via other means) privacy – let’s discuss this next.

---