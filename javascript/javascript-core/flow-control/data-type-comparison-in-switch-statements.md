---
author: jordanfish
type: normal
category: caveats
links:
  - >-
    [16 Common JavaScript
    Gotchas](http://www.standardista.com/javascript/15-common-javascript-gotchas){website}
  - '[== vs ===](https://youtu.be/kVOmc7NK1M0){video}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Type Comparison in `switch` Statements


---

## Content

The `==` operator does not care for types. Therefore, the following `if` condition will pass:

```javascript
let test = 5;
if (test == "5") {
  console.log("Ay caramba");
}
// Ay caramba
```

Instead, the `===` operator won't do any type conversion and the `if` condition will be evaluated to `false`:

```javascript
if (test === '5') {
  console.log('Ay caramba');
} else {
  console.log('Expected');
}
// Expected
```

Keep in mind that **JavaScript** uses **strict comparison** for `switch` statements:

```javascript
let test = 5;
switch (test) {
  case '5': // this isn't matched!
    console.log('Ay caramba');
}
```

Because of the **strict comparison**, JavaScript tests that `5 === '5'`  which evaluates to `false`. Therefore, the code snippet above won't `log` anything.


---

## Practice

Complete the following code snippet such that `A` is logged to the `console`:

```javascript
let x = 1;
switch (???) {
  ??? ???:
    console.log('A');
}
// A
```

- `x`
- `case`
- `1`
- `'1'`
- `default`
- `'5'`
- 5
- `one`
- `A`
- `'A'`


---

## Revision

What will the following snippet output?

```javascript
let x = 10;
switch(x){
  case '10':
     console.log("Hi!");
}
// ???
```

- `nothing`
- `'Hi!'`
- `an error`
 
