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

Do you know what is allowed and not allowed in `strict mode` in JavaScript? Can you spot the lines that would produce errors?

---
## Game Content

"useStrict";
//"use strict";
let x = 42;
---
function foo() {
  "use strict";
  eval(42); 
// eval not allowed in strict
} 
foo();
---
(function foo() {
  "use strict";
   console.log(arguments);
// arguments not allowed in strict 
})();
---
(function foo() {
  "use strict";
   var let = 24;
// let is a keyword
   console.log(let);
})();
---
"use strict";
function foo() {
  var x = 0;
  x = y*4; 
// y not declared 
} 
foo();
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
---
"use strict";
with ({f: 24}) {
// with not allowed in strict 
  alert(f);
}
---
"use strict";
 
function F(x) {
  this.x = x;
}
 
var f = F(24);
// var f = new F(24);
