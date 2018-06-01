---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:

  javascript.data-types-structures.2: 10
  javascript.evaluate-expressions.6: 10
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.5: 10

tags:

  - introduction
---

# Arrays

---

## Content

Arrays are an important concept in JavaScript and used frequently.

Declaring an array:

```javascript
var myArray = [1, 2, 3];
var anotherArray = ['a', 'b', 'c'];
```

Array's are _zero based/indexed_ so if you want to retrieve the first value you use 0 as the index parameter:

```javascript
console.log(myArray[0]);
```

We can retrieve the last value of an array by using the _length_ property and subtracting 1 from it (don’t use this on an empty array!)

```javascript
var arrayLength = myArray.length;
var lastVal = myArray[arrayLength - 1];
console.log(lastVal);
```

Values can be added to the array with the _push_ method which returns the new length of the array:

```javascript
myArray.push(555); //4
myArray.push(5, 6, 7); //7
```

Or the last item can be returned and removed using _pop_:

```javascript
myArray.pop();
```

You can find the position of any item with the _indexOf_ operator:

```javascript
var pos = myArray.indexOf(3); //2
```

We can iterate over the array items with _forEach_:

```javascript
myArray.forEach(function(
  item,
  index,
  array
) {
  console.log(item, index);
});
```

Another cool feature of JavaScript is that you can initialize an array as such:

```javascript
var myArray = [, , ,];
```

What this does is create an _empty_ array of _size 3_ (not 4, as the last comma is ignored).

---

## Practice

How would you get the last value in the `myArray` array?

```javascript
var myLength = myArray.???
var last = ???[??? ???];
```

- `length`
- `myArray`
- `myLength`
- `-1`
- `+0`
- `+1`
- `array`
- `[0]`
- `.getLast`
- `.tail`

---

## Revision

Fill the gaps such that you get the first element of `enkiArray`:

```
var enkiArray = [1, 2, 3];
var firstElement = ??????;
```

- `enkiArray`
- `[0]`
- `[1]`
- `array`
- `getLast()`
- `getFirst()`
- `push`
- `pop`

---

## Quiz

### what is the length of the array below?

```javascript
let arr = [, , ,];
console.log(arr.length);
```

???

- 3
- 4
- 0
- 1
