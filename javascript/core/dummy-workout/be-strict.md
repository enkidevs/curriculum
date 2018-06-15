---
author: rosielowther

levels:

  - basic

  - beginner

type: bugSpot

category: must-know

links:

  - >-
    [dmitrysoshnikov.com](http://dmitrysoshnikov.com/ecmascript/es5-chapter-2-strict-mode/){website}

---
# Be strict.

---
## Content

Do you know what is allowed and not allowed in `strict mode` in JavaScript? Can you spot the lines that would produce errors?

---
## Game Content

"useStrict";
//"use strict";
let x = 42;
%exp
The right syntax for strict mode in **JavaScript** is `use strict` not `useStrict`.
%

---
function foo() {
  "use strict";
  eval(42);
// eval not allowed in strict
}
foo();
%exp
`eval` doesn't have the same meaning in strict mode as it does normally.
%

---
(function foo() {
  "use strict";
   console.log(arguments);
// arguments not allowed in strict
})();
%exp
`arguments` can't be bound or assigned in language syntax.

All attempts to do so will result in syntax errors.
%

---
(function foo() {
  "use strict";
   var let = 24;
// let is a keyword
   console.log(let);
})();
%exp
`let` is a keyword in **JavaScript**. It can’t be used to name a variable.
%

---
"use strict";
function foo() {
  var x = 0;
  x = y*4;
// y not declared
}
foo();
%exp
`y` wasn't declared, so `y*4` can’t be evaluated.
%

---
"use strict";

var foo = Object.defineProperties({}, {
  bar: {
    value: 10,
    writable: false
  }
});

foo.bar = 24;
// can't assign read-only property
%exp
`bar` is a **read-only** property.

This means we can not change its value anywhere else in the program.
%

---
"use strict";
with ({f: 24}) {
// with not allowed in strict
  alert(f);
}
%exp
`with` rises some problems here because any variable name inside the block could map either to a property of the object passed as an argument, or to a variable in surrounding (or even global) scope.
At runtime: it's impossible to know which beforehand.
%

---
"use strict";

function F(x) {
  this.x = x;
}

var f = F(24);
// var f = new F(24);
%exp
`F` will contain an object, with a property named `x`.
%
 
