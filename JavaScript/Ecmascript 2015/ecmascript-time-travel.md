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
---
```
let [a,b,c] == [1, 2, 3];
// b === ???
```
* `2`
* `1`
* `3`
---
```
let [ , , x, y] == [1, 2, 3, 4];
// x + y === ???
```
* `7`
* `3`
* `4`
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
---
```
// ES5:
var y  = timeObject.year;
// ES6 equivalent:
var ??? = timeObject
```
* `{year:y} `
* `{y:year} `
* `{y.year}`
