---
author: catalin
type: normal
category: how-to
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

# Round Numbers to `N` Decimals


---

## Content

Two methods that can be useful in rounding numbers.

- `toFixed(n)`: argument provides the length after the decimal point
- `toPrecision(n)`: argument provides the total length of the number

Use `toFixed`:

```javascript
let num = 2.44534;
console.log(num.toFixed(3)); // 2.445
```

Use `toPrecision`:

```javascript
let num = 444.3245;
console.log(num.toPrecision(5)); //444.32
```


---

## Practice

Complete the following code snippet:

```javascript
// convert the number to length 3
console.log((12.4513).???(3);

// convert the number to have length 3 
// after the decimal point
console.log((12.4513).???(3);
```

- toPrecision
- toFixed
- dec
- length


---

## Revision

Complete the code snippet below as to get the result shown in the comment:

```javascript
let pi = 3.141592;

console.log(pi.???(2));
// 3.14
```

- `toFixed`
- `toPrecision`
 
