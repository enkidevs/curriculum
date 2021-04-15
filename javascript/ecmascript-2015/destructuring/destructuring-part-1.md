---
author: alexjmackey
type: normal
category: feature
links:
  - >-
    [Destructuring
    Assignment](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Destructuring (Part 1)


---

## Content

Destructuring provides a succinct and flexible way to assign values from arrays or objects.

This is best illustrated with an example. Destructuring is used below to assign `x` and `y` the values `100` and `200` in just one line of code:

```javascript
let x, y;
[x, y] = [100, 200];
// x = 100, y = 200
```

### Function Return Values

Destructuring works great with functions.

Let's say we have a function that multiplies two input arguments (x and y) by two and returns the result as an array.

Destructuring can assign the results of this operation to two variables with just one line of code:

```javascript
let x, y;

function dblNumbers(x, y) {
  return [x * 2, y * 2];
}

[x, y] = dblNumbers(100, 200);
// x = 200, y = 400
```

### Swapping Variables

Destructuring can also be used to swap the contents of two variables without having to create another temporary variable:

```javascript
let x = 1;
let y = 2;
[y, x] = [x, y];
// x = 2, y = 1
```


---

## Practice

Swap `a` and `b` using destructuring:

```javascript
let a = 'foo'
let b = 'bar'

[a ???] = ???
console.log(a) // bar
console.log(b) // foo
```

- , b
- `[b, a]`
- `[, a]`
- a
- b
- , a
- `[a]`
- `[b]`
- `[a, b]`
- ,


---

## Revision

What will be the output of the following statements:

```javascript
function squareNums(nums) {
  return nums.map(function(num) {
    return num * num;
  });
}

const [a, b] = squareNums([3, 4, 5]);
console.log(a);
// ???
console.log(b);
// ???
```

- 9
- 16
- error
- `[9, 16]`
- `[16, 25]`
- `[9, 25]`
- 25
- 0
- undefined
- null
 
