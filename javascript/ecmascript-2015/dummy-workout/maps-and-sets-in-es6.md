---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[www.2ality.com](http://www.2ality.com/2015/01/es6-maps-sets.html){website}'
  - >-
    [MDN -
    Set](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set){website}
  - >-
    [MDN -
    Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Maps and Sets in ES6


---

## Content

ES6 introduces useful new data structures `Map` and `Set`.

The `Map` data structure lets you **map** values to values. You can use arbitrary values, including objects, as keys:

    let map = new Map();
    const KEY1 = {};
    map.set(KEY1, 'Enki'); // key = 'Enki'

The `Set` data structure:

    let set = new Set();
    set.add('Enki')
    set.has('Enki') // true

Sets and Maps are **iterable** so can be processed using the `for...of` loop and `spread` operator.

You can't `map()` or `filter()` Maps or Sets. A workaround is to convert the Map/Set into an array, perform the operation and convert back.


---

## Practice

Complete the following code snippet to create a set, to add 'question' and to check whether the set consists of 'question':

```javascript
??? set = new Set();
set.???('Question');
set.???('Question');
```

- let
- add
- has
- var
- new
- addItem
- hasItem
- holds


---

## Revision

Are **Sets** and **Maps** iterable?

???

- yes
- no
 
