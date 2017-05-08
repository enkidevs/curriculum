# Be strict.
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
## Content

Do you know what is allowed and not
allowed in `strict mode` in JS? Can
you spot the lines that would produce
errors?

---
## Game Content

"useStrict";
//"use strict";
let x = 42;
%exp
The right syntax for strict mode
in js is `use strict` not `useStrict`.
%
---
function foo() {
  "use strict";
  eval(42);
// eval not allowed in strict
}
foo();
%exp
In strict mode `eval` creates a variable
only for the code being evaluated. `eval`
doesn't have the same meaning in strict
mode as it does normally.
%
---
(function foo() {
  "use strict";
   console.log(arguments);
// arguments not allowed in strict
})();
%exp
`Arguments` can't be bound or assigned in
language syntax. All attempts to do so
will result in syntax errors.
%
---
(function foo() {
  "use strict";
   var let = 24;
// let is a keyword
   console.log(let);
})();
%exp
`let` is a keyword in javascript. It can’t
be used to name a variable.
%
---
"use strict";
function foo() {
  var x = 0;
  x = y*4;
// y not declared
}
foo();
%expy
wasn't declared so y*4 can’t be evaluated.
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
Bar is set as a `non writable`. This means
we can not change it’s value anywhere else
in the program.
%
---
"use strict";
with ({f: 24}) {
// with not allowed in strict
  alert(f);
}
%exp
`with` rises some problems here because
any name inside the block might map
either to a property of the object passed
to it, or to a variable in surrounding
(or even global) scope. At runtime: it's
impossible to know which beforehand.
%
---
"use strict";

function F(x) {
  this.x = x;
}

var f = F(24);
// var f = new F(24);
%exp
We need to instantiate the function F in
order to assign it’s resulting value to a
variable.
%
---
