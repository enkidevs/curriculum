---
author: chrisjstott

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - function-expression

  - function-declaration

  - hoisting

notes: subtopic=functions

links:

  - >-
    [javascriptweblog.wordpress.com](https://javascriptweblog.wordpress.com/2010/07/06/function-declarations-vs-function-expressions/){website}

---
# Function declarations vs function expressions

---
## Content

What is the difference between:
```
function example1() {};
```
and
```
var example2 = function() {};
```
The answer is that they are hoisted differently.

`example1` is a function declaration, and is hoisted entirely. You could call `example1()` in a line that precedes the declaration.

`example2`, like all variable declarations, hoists the variable's name only and sets it to `undefined`. If you call `example2()` before the line in which it is defined, it will throw an error.

```
  if (1 === 2) {
    function example3() {};
  }

  if (1 === 2) {
    var example4 = function() {};
  }
```
Because function declarations are always hoisted, `example3` will be defined, despite the if-statement evaluating false.

 `example4` will hoist the variable declaration only, and will remain `undefined` unless it is defined elsewhere.

---
## Practice

Which function is *not* hoisted entirely? ???

```javascript
var example1 = function() {};
function example2() {};
```

* example1
* example2
* Neither
* Both

---
## Revision

Which function is hoisted entirely?

```javascript
function enki() {};
var enki2 = function() {};

```

???

* enki
* enki2
* none
* both