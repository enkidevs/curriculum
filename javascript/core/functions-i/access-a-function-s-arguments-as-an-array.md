---
author: Bruno

levels:

  - beginner

type: normal

category: how to


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments){documentation}'


---

# Access a function's `arguments` as an array

---
## Content

The arguments of a function can be accessed with the `arguments` keyword, but `arguments` only returns a *pseudo-array*.

Before applying Array methods, `arguments` needs to be converted to an actual Array, as follows:


```
function sortedArgs() {
  // pseudo-array of arguments
  var a = arguments 
  // turn a into a proper Array: 
  a = Array.prototype.slice.call(a)
  // we can now use Array methods: 
  return a.sort();
}

```
Example of use:

```
sortedArgs(3,1,2) 
// [1,2,3]
```

---
## Revision

Turn the arguments of a method into a array:
```javascript
function myArray() {
  var a = ???;
  a = Array.prototype.???.call(a);
  return a;
```


* `arguments`
* `slice`
* `splice`
* `argv`
* `args`
* `sort`
* `toArray`

