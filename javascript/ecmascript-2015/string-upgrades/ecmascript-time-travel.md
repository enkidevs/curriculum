---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

---

# Ecmascript Time Travel

---
## Content

Hello, traveler.

You will attempt to accurately fill the gaps in the code snippets to recreate ES5 compatible code using the new features of ES6.

Best of luck. We will be watching you.

---
## Game Content

```javascript
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
Arrow function expressions have a shorter syntax than a keyword function expression.

The **arrow function** does not create a new execution context, so it inherits it's parent's `this` or `arguments`.
%

---

```javascript
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
ES6 **arrow function** is the shorter way of expressing a function.
%

---

```javascript
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
The `extends` keyword is used in class declarations or class expressions to create a child class of another class.
%

---

```javascript
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
ES6 **arrow function** is the shorter way of expressing a function.
%

---

```javascript
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
The **destructuring assignment** syntax is a **JavaScript** expression that makes it possible to extract data from arrays or objects into distinct variables.
%

---

```javascript
let [a,b,c] == [1, 2, 3];
// b === ???
```

* `2`
* `1`
* `3`

%exp
When using **array destructuring** the variables `a,b,c,` have their values assigned to the first, second and third value in the array respectively.

%

---

```javascript
let [ , , x, y] == [1, 2, 3, 4];
// x + y === ???
```

* `7`
* `3`
* `4`

%exp
We assign 1 and 2 to nothing, and 3 and 4 to `x` and `y`, respectively. Their sum is 7.
%

---

```javascript
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
**Object destructuring assignment** could be user here to assign variables `y,m,d` values `timeObject.y`,`timeObject.m` and `timeObject.d` respectively.
%

---

```javascript
// ES5:
var y  = timeObject.year;
// ES6 equivalent:
var ??? = timeObject
```

* `{year:y} `
* `{y:year} `
* `{y.year}`

%exp
By using **destructuring assignment**, y is assigned the value of `timeObject`'s property `year`.
%