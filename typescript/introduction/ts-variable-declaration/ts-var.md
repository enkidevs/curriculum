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

```js
var some = 'thing';

function foo() {
  var bar = 0;
  return bar;
}
```

Using `var` can create some issues with scoping[1]. One of the biggest problems is that any `var` declaration is accessible anywhere withing their containing function, module, namespace or global scope. 

Another big error is that **it is not an error** to declare the same variable multiple times.

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

Weird right? You would expect the example to log all numbers from 0 to 2. Because we declare `var`

---
## Practice



---
## Revision


---
## Footnotes

[1:Scoping]
What is scoping