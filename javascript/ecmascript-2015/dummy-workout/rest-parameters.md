---
author: rosielowther
levels:
  - medium
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

ES6 introduces **rest** parameters. These are indicated by three dots `...` preceding a parameter. The rest parameter is an array that contains an indefinite number of arguments.

In this example, if more than three parameters are passed to the function, the additional parameters will be stored in `rest`:

    function(a, b, c, ...rest) {
      // ...
    }

This differs from the `arguments` object of ES5 that would contain **all** the parameters if it was used.

Another difference is that a rest parameter is a true array and so can have array methods such as `sort()` applied to it.


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
 
