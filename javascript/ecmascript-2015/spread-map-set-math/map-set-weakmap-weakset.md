---
author: gregbenner

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

links:

  - '[MDN - Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map){website}'

  - '[MDN - Set](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set){website}'

  - '[MDN - Weakmap](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap){website}'

  - '[MDN - Weakset](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet){website}'

---

# map, set, weakmap, weakset

---
## Content

How confident are you about using JavaScript ES6 data structures?

---
## Game Content

```javascript
// With ES6 maps, we set simple
// key/value pairs:

Strings,
???
are acceptable key formats;

```

* functions, objects and dates
* and nothing else
* null, NaN, and objects

%exp
All four can be used as keys in ES6 maps.
%

---

```javascript
// ES6 maps are iterable objects,
// a concise loop format is:
var map = new Map();
for (let ???) {
  console.log(`${key}: ${value}`)
}
```

* `[key, value] of map`
* `i=0; i > map.length; i++;`
* `i=1; i == true; i++;`

%exp
The pair `[key,value]` represents one tuple from the map that the `for` loop is iterating over.
%

---

```javascript
// Using WeakMaps the following
// will result in?

var map = new WeakMap();
map.set(1, 2);
// ???
```

* TypeError: Invalid value ...
* Nothing, it's perfectly valid!
* ReferenceError: map is not ...

%exp
Integers can’t be used as weak keys.
%

---

```javascript
// Sets

var set = new WeakSet();
set.add(new Date());
// ???

```

* Nothing, this is right!
* TypeError: Invalid value ...
* ReferenceError: Date is not ...

%exp
This syntax is correct.
%

---

```javascript
// With `WeakSets`:

var set = new WeakSet();
set.add(Symbol());
// ???
```

* TypeError: invalid value...
* Nothing, this is right!
* ReferenceError: Symbol is not..

%exp
`WeakSet` objects are collections of objects. In contrast to `Sets`, `WeakSets` are collections of objects only.

`Symbol()` is a primitive type so this is what causes the `TypeError`.
%