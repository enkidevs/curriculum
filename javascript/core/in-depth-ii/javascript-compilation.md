---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

standards:

  javascript.functions.1: 10

  javascript.functions.5: 10

  javascript.functions.6: 10

  javascript.execution-context.4: 10

tags:

  - deep

  - workout

  - obscura




aspects:
  - deep
  - workout
  - obscura


---

# JavaScript compilation

---
## Content

A common **misconception** is that JavaScript is **not compiled**.

Javascript source code compiles every time the program runs. The compiler reads the code and looks for blocks of scope.

The compiler looks for variable and function **declarations** and registers them to their **scope** (e.g. global).

JavaScript is **function** scoped.

For example:
```
var a = 2; // a is in global
var b = 3; // b is in global
function fun(){ // fun is in global
    var a = 2; // a is in fun
    function yes(){ // yes is in fun
        var b = 3; // b is in yes
    }
}



```
Then the code is executed.

There are many sophisticated compilation techniques such as **jit** compilation, which only compiles a function if it reads a call to that function in the code.

**Note:** modern JS can also define block scope variables using `let` and `const`.

---
## Practice

Find the variable scopes in the following code:

```javascript
var flag = true; //flag is ???

function test() {
   var x;
   function test2() { // test2 is in ???
      var y;
   }
}
```


* global
* test
* test2
* document
* inline
* var
* project

---
## Revision

Find each variable scope in the following code:
```javascript
var a = 1; // a is in global
var b = 2; // b is in ???
function foo(){ // foo is in global
  var a = 2; // a is in foo
  function fee(){ // fee is in ???
  var b = 3; // b is in ???
  }
}
```

* global
* foo
* fee
* local

 
