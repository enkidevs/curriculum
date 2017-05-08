# map, set, weakmap, weakset
author: gregbenner

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

---
## Content



---
## Game Content

```
// With ES6 maps, we set simple
// key/value pairs:

Strings, ??? are
acceptable key formats;

```

* functions, objects and dates
* and nothing else
* null, NaN, and objects

%exp
All four can be used as keys in ES6 maps.
%
---

```
// ES6 maps are iterable objects,
// a concise loop format is:
var map = new Map();
for (let ???) {
  console.log(`${key}: ${value}`)
}
```
* [key, value] of map
* i=0; i > map.length; i++;
* i=1; i == true; i++;

%exp
The syntax means that the pair `[key,value]`
represent one tuple from the map on each
iteration.
%
---

```
// Using WeakMaps the following
// will result in?

var map = new WeakMap();
map.set(1, 2);
// ???
```

* TypeError: Invalid value ...
* nothing it's perfectly valid
* ReferenceError: map is not ...

%exp
Integers can’t be used as weak keys.
%
---

```
// Sets

var set = new WeakSet();
set.add(new Date());
// ???

```

* nothing, this is right
* TypeError: Invalid value ...
* ReferenceError: Date is not ...

%exp
This syntax is correct and can be used
at anytime.
%
---
```
// With `WeakSets`:

var set = new WeakSet();
set.add(Symbol());
// ???
```

* TypeError: invalid value...
* Nothing it's perfect
* ReferenceError: Symbol is not..

%exp
Weaksets, are collections of objects only,
but not any arbitrary value of any type.
%
