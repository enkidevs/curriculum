---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [How numbers are
    represented](http://steve.hollasch.net/cgindex/coding/ieeefloat.html){website}
  - '[IEEE association](http://standards.ieee.org/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Parsing Numbers and IEEE-754


---

## Content

If you want to convert string input to a number type you can use the *parseInt* and *parseFloat* methods.

*parseInt* accepts 2 arguments:

- Value to be converted
- Radix or base of the number system to use 

The Radix or base defaults to 10 on later browsers but it is probably still best to specify as this is not the case on older browsers.

*parseFloat* accepts just one argument:

- Value to be converted

The below example shows how to use *parseInt* and *parseFloat*:

```javascript
parseInt("10", 10);//base 10, 10
parseInt("011", 2);//binary, 3
parseFloat("0.1");// 0.1
```

If we try to parse a value that cannot be converted, then JavaScript will return a special value called NaN (not a number):

```javascript
parseInt("abc",10);//NaN
```

**IEEE-754**

All numbers in JavaScript are held as *64 bit floating point numbers* using a format called *IEEE-754*.

You should be aware this means you can get issues when performing certain calculations (this also occurs in other languages that use IEEE-754) as certain numbers cannot be represented exactly. For example:

```javascript
0.1 + 0.2 = 0.30000000000000004
```


---

## Practice

What will be the output of the following function call?

```javascript
console.log(parseInt("abc",10));
// ???
```

- `NaN`
- `Error`
- `10`


---

## Revision

What method would you use to parse the following string so that it doesn't return `NaN`:

```javascript
???("0.2", 10);
```

- `parseFloat`
- `parseInt`
- `parseString`
- `parseDouble`
 
