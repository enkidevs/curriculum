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

Traditionally, declaring a variable in JavaScript was done using the `var` keyword. 

Since TypeScript is a superset of JavaScript, it also supports `var`:

```ts
var some: string = 'thing';
```

However, using `var` can create some issues because of unintuitive scoping[1].

Variables declared with `var` are always in the function scope, even if they are defined within a block.

```ts
if (x == 5) {
  var enki = true;
}
// enki is accessible here
// even though it was defined
// inside the if statement
console.log(enki); // true
```

Another potentially confusing behavior of `var` is that **it is not an error** to re-declare the same variable multiple times, as long as we keep the same type.

```ts
var a = 'enki';
var a = 'foobar';
console.log(a); // 'foobar'
```

The reason this leads to problems is because different parts of the codebase can change same variables without it being obvious. If you only saw `var a = 'foobar'` somewhere in code, you wouldn't know that it was also changing an axisting `a`.

Next we'll showcase safer modern approaches to declaring variables using the keywords `let` and `const`.

---
## Footnotes

[1:Scoping]
Scope is just a fancy word to mean which variables are accessible from which parts of the code. There are two types of scope: *function* scope and *block* scope. The global scope is a special kind of function scope.

Any code within a function is within a function scope. Any code between `{}`, for example in a loop or an `if` statement, is in a block scope.
 
If you want to learn more about scope in JavaScript, make sure you check out the `Scope` workout in the `Core` section of that skill.