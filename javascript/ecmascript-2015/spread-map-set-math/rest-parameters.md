---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Rest parameters


---

## Content

Next to the **spread** operator, there is also a **rest** parameter. 

The **rest** parameter is indicated by three dots `...` preceding a parameter. It is an array that contains an indefinite number of arguments.

In this example, if more than three parameters are passed to the function, the additional parameters will be stored in `rest`:

```javascript
function(a, b, c, ...rest) {
  // ...
}
```

Since **rest** and **spread** use the same symbol `...`, it's easy to confuse them.

A good way to think of it is that **rest** is used when  taking data (take a, b and the rest) while **spread** is used when giving data (give a, b and spread some more).

```javascript
// rest
function (a, b, ...rest) {
}

const [a, b, ...rest] = x

// spread
x(a, b, ...spread);

x = [a, b, ...spread]

x = { a, b, ...spread }
```

---

## Practice

Complete the code snippet so that the function can have more than 3 parameters passed to it:

```javascript
function(a, b, c, ???) {
  // function code
}
```

- ...rest
- rest
- ..rest
- __rest
- ___rest


---

## Revision

Store all parameters under `rest` in the function:

```javascript
function(??????) {

}
```

- ...
- rest
- param
- ..
- undefined
 
