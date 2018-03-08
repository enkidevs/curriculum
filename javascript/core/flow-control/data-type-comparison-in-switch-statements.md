---
author: jordanfish

levels:

  - basic

type: normal

category: caveats


links:

  - '[www.standardista.com](http://www.standardista.com/javascript/15-common-javascript-gotchas){website}'


---
## Content
# Data type comparison in `switch` statements

The `==` operator does not care for types. Therefore, the following `if` condition will pass:

```js
var test = 5;
if (test == '5'){
  console.log('Ay caramba');  
}
// Ay caramba
```
Instead, the `===` operator won't do any type conversion and the `if` condition will be evaluated to `false`:
```js
if (test === '5') {
  console.log('Ay caramba');
} else {
  console.log('Expected');
}
// Expected
```
Keep in mind that **JavaScript** uses **strict comparison** for `switch` statements:
```js
var test = 5;
switch (test) {
  case '5':
    console.log('Ay caramba');
}
```

Therefore, the code snippet above won't `log` anything.

---
## Practice

Complete the following code snippet such that `A` is logged to the `console`:
```js
var x = 1;
switch (???) {
  ??? ???:
    console.log('A');
}
// A
```


* `x`
* `case`
* `1`
* `'1'`
* `default`
* `'5'`
* 5
* `one`
* `A`
* `'A'`

---
## Revision

What will the following snippet output?
```javascript
var x = 10;
switch(x){
  case '10':
     console.log("Hi!");
}
// ???
```

* `nothing`
* `'Hi!'`
* `an error`

