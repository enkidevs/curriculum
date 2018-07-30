---
author: gregbenner

levels:

  - advanced

  - medium

type: fillTheGap

category: must-know

links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Array_destructuring){website}'

---

# iterators, for of, ...spreads

---
## Content

Freshen up you knowledge on `iterators`, `for of` loops and the `spread operator` with this exercise.
The goal is to fill in the gaps with either the output of the snippet or the missing bit that won't throw any errors.

---
## Game Content

```javascript
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

%exp
Here, `onomatopoeia` is a generator function (note the `function*` notation), returning a **Generator** object (assigned to `noise` variable).

Calling the `next()` function on `noise` will execute the function body until it reaches the first `yield` statement, returning the specified value (`Woof`).
%

---

```javascript
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

%exp
**ES6** spec defines non-string **symbol** property names of objects to describe particular behaviours, `Symbol.iterator` specifically describing how iteration works.

Underneath, the `for...of` loop is implemented using this specification.

While calling `greeting[Symbol.iterator]()`, the `"hi"` string is converted to an array of characters and then converted to an iterator, that will yield each array value together with a `done` property in a object. The latter will be equal to `true` when the iteration is done (i.e. the next `next()` call will result in `{ value: "i", done: true }`).
%

---

```javascript
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

%exp
A `for...of` statement will loop over the iterable `arr` object, assigning to variable `i` the values in the array, one by one.

Therefore, `'dragon'`, `'wizard'` and `'monkey'` will be printed one by one.
%

---

```javascript
// How can we get this to be '1 2 3 4 5'

console.log(1, ???[2, 3, 4], 5)
```

* ...
* concat
* map

%exp
We can use the spread operator (`...`) to copy the contents of the `[2, 3, 4]` array between the elements `1` and `5`, resulting in the wanted array.
%

---

```javascript
let fish = ['Tuna', 'Trout'];
let whales = ['Blue Whale', ...fish,
'Orca'];

// whales = ???
```

* ['Blue Whale', 'Tuna', 'Trout', 'Orca']
* ReferenceError '... is not defined'
* TypeError 'Array has no method ...'

%exp
When constructing the `whales` array, we make use of the spread operator (`...`) which will copy the contents of the `fish` array and insert them starting at index `1` (where the operator was used). Sequentially, the `"Orca"` element is appended.
%
