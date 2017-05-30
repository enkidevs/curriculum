# iterators, for of, ...spreads
author: gregbenner

levels:

  - advanced

  - medium

type: fillTheGap

category: must-know

---
## Content

Freshen up you knowledge on `iterators`, `for of` loops and the `spread operator` with this exercise.
The goal is to fill in the gaps with either the output of the snippet or the missing bit that won't throw any errors.

---
## Game Content

```
// How can we make a
// noise with this iterator?

function* onomatopoeia() {
      yield 'Woof';
      yield 'Meow';
      yield 'Ribbit';
}
let noise = onomatopoeia();
noise.???();

```
* next
* call
* exec

---

```
// Given:

var greeting = "hi";
let iterator =
  greeting[Symbol.iterator]();

iterator.next();
// returns ???

```
* { value: "h", done: false }
* ["h", false]
* { value: "h", done: true }

---

```
let arr = ['dragon', 'wizard',
  'monkey'];

for (let i of arr) {
   console.log(i);
   // logs ???
}

```
* 'dragon', 'wizard', 'monkey'
* 0, 1, 2
* 1, 2, 3
---

```
// How can we get this to be '1 2 3 4 5'

console.log(1, ???[2, 3, 4], 5)
```
* ...
* concat
* map

---

```
let fish = ['Tuna', 'Trout'];
let whales = ['Blue Whale', ...fish,
'Orca'];

// whales = ???

```
* ['Blue Whale', 'Tuna', 'Trout', 'Orca']
* ReferenceError '... is not defined'
* TypeError 'Array has no method ...'
