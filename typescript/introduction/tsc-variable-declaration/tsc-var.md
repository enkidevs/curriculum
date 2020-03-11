---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Declaring Variables

---
## Content

Traditionally, declaring a variable in JavaScript is done using the `var` keyword:

```ts
var some: string = 'thing';
```

Using `var` can create some issues with scoping[1]. One of the biggest problems is that any `var` declaration is accessible anywhere within their containing function, module, namespace or global scope[2]. 

Another big problem is that **it is not an error** to declare the same variable multiple times[3].

One of the best examples that show the problems with `var` is this:

```ts
for (var i = 0; i < 3; i++) {
  setTimeout(function() { console.log(i); }, 10 * i);
}

// Output:
// 3
// 3
// 3
```

Weird right? You would expect the example to log all numbers from 0 to 2. The `setTimeout` function references the same `i` we declare in `for`. The issue here is that `setTimeout` is actually called after the final iteration, where `i = 3`.

---
## Footnotes

[1:Scoping]
Scope is just a fancy word for the current context of the code. To be more explicit, the scope determines where you can access your variables, functions and objects. There are two types of scope, global and local. When defined in the global scope, a variable can be accessed from anywhere. When defined in a local scope, which usually inside the body of a function, the variable can only be accesed in that scope. If you want to learn more about scope in JavaScript, make sure to check the `Scope` mission on the `Core` sub-topic.

[2:Variable Accesibility]
Take this example:

```js
function f() {
  var foo = 0;
  return function g() {
    var bar = foo + 1;
    return bar;
  }
}

var g = f();
g(); // 1
```

Although `f()` finishes running, `g()` is still able to access the `foo` variable.

[3:Multiple Declarations]
When using `var`, this does not throw an error:

```js
var a = 10;
var a = 'foobar';
console.log(a); // 'foobar'
```