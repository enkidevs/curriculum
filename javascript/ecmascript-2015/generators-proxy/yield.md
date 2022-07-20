---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/yield#Examples){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# yield


---

## Content

We can actually make our number example even more succinct by using `yield*`:

```javascript
function* genShort() {
  yield* [1, 2, 3, 4, 5];
}
```

When we use `yield*` it iterates over values supplied to the expression (in this case the array).

`yield*` could also be used to split work between two generators:

```javascript
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

let it = gen1();
it.next(); // {value: 1, done: false}
it.next(); // {value: 2, done: false}
it.next(); // {value: 3, done: false}
it.next(); // {value: 4, done: false}
it.next(); // {value: 5, done: false}
```


---

## Practice

Fill in the missing gaps such that the `next()` calls' output stand true:

```javascript
??? myGen() {
  ??? 4;
  ??? [3,1];
}

let x = myGen();
x.next();
// { value: 4, done: false }
x.next()
// { value: 3, done: false }
x.next()
// { value: 1, done: false }
x.next()
// { value: undefined, done: true}
```

- function*
- yield
- yield*
- return
- return*
- myGen
- function
- done
- next
- await
- Promise.all


---

## Revision

Fill in the missing gaps such that the `next()` calls' output stand true:

```javascript
??? gen1() {
  ??? 5;
  ??? ???;
}

function* gen2() {
  ???;
  ???;
}

let x = gen1();
x.next();
// { value: 5, done: false }
x.next()
// { value: 3, done: false }
x.next()
// { value: 2, done: false }
x.next()
// { value: undefined, done: true}
```

- function*
- yield
- yield*
- gen2()
- yield 3
- yield 2
- yield 5
- yield 4
- return 2
- return 3
- function
- gen2
- return*
 
