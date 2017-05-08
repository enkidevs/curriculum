# Ecmascript Time Travel
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

---
## Content

Hello, traveler.

You will attempt to accurately fill the gaps in the code snippets to recreate ES5 compatible code using the new features of ES6.

Best of luck. We will be watching you.

---
## Game Content

```
// ES5
var half = function(x) {
  return x/2;
}
// ES6 equivalent:  
var half = (x) ??? {
  return x/2;
}
```
* `=>`
* `->`
* `==>`
%exp
Arrow function expression has a shorter syntax than the regular expression form, they are supported sience ES6. It also does not bind it’s own this, arguments, super and new target.
%

---

```
// ES5
myList.filter(function(x) {
    return x > 2;
})
// ES6 equivalent:  
myList.filter(???)
```
* `x => x > 2`
* `x => return x > 2`
* `x => {x > 2}`
%exp
Same as above. ES6 has arrow function implemented.
%

---
```
class LogView ??? View {
  render() {
    var compiled = super();
    console.log(compiled);
  }
}
```
* `extends`
* `inherit`
* `generalize`
%exp
The extends keyword is used in class declarations or class expressions to create a child class of another class.
%

---
```
// ES5:
function NicePerson() {
  this.msg = 'Hello ';
  this.greet = function(name) {
    return this.msg + name
  }.bind(this);
}
// ES6 equivalent:  
function NicePerson() {
  this.msg = 'Hello ';
  this.greet = (name) ??? {
    return this.msg + name
  };
}
```
* `=>`
* `->`
* `-->`
%exp
Arrow functions can be used in lots of different situations.
%

---
```
// ES5:
var year  =  timeArray[0];
var month =  timeArray[1];
var day   =  timeArray[2];
// ES6 equivalent:  
var ??? = timeArray;
```
* `[year, month, day]`
* `(year, month, day)`
* `{year, month, day}`
%exp
The `destructuring assignment` syntax is a `JavaScript` expression that makes it possible to extract data from arrays or objects into distinct variables.
%

---
```
let [a,b,c] == [1, 2, 3];
// b === ???
```
* `2`
* `1`
* `3`
%exp
Taking in consideration `destructuring assignment` syntax we can predict that b will hold value 2.
%

---
```
let [ , , x, y] == [1, 2, 3, 4];
// x + y === ???
```
* `7`
* `3`
* `4`
%exp
With x being 3 and y being 4 their sum is 7.
%

---
```
// ES5:
var y  = timeObject.y;
var m  = timeObject.m;
var d  = timeObject.d;
// ES6 equivalent:
var ??? = timeObject;
```
* `{y,m,d}`
* `[y,m,d]`
* `(y,m,d)`
%exp
Object destructuring works the same, except the syntax contains `{}` instead of `[]`.
%

---
```
// ES5:
var y  = timeObject.year;
// ES6 equivalent:
var ??? = timeObject
```
* `{y:year} `
* `{year:y} `
* `{y.year}`
%exp
Destructuring works for arguments as well.
%

---
