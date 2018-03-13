---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/yield#Examples){website}'

inAlgoPool:

---

# yield

---
## Content

We can actually make our number example even more succinct by using **yield***:
```
function* genShort(){
	yield* [1,2,3,4,5];
}
```

When we use yield* it iterates over values supplied to the expression (in this case the array).

yield* could also be used to split work between two generators:

```
function* gen1() {
  yield 1;
  yield* gen2();
  yield 5;
}
function* gen2() {
  yield 2;
  yield 3;
  yield 4;
}
var it = gen1();
it.next();//Object {value: 1, done: false}
it.next();//Object {value: 2, done: false}
it.next();//Object {value: 3, done: false}
it.next();//Object {value: 4, done: false}
it.next();//Object {value: 5, done: false}
```

