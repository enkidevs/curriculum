---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:
  - introduction
  - es6
  - memory

standards:
  javascript.new-declaration-keywords.1: 10

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/const){website}'

aspects:
  - introduction


---
# Const (Part 1)

---
## Content

The *`const`* (constant) keyword has been introduced in ES6 and creates a variable that cannot be reassigned.

When declaring a constant variable, you must assign an initial value otherwise you
will receive an error.

To declare a constant variable assignment, use the *`const`* keyword:

```javascript
const year = 2016;
```

Once a `const` is declared any attempts to reassign the value will cause an error:

```javascript
year = 2017; // error
year = "future"; // error
```

Before we move on with this insight, we need to take a look at what scope means in JavaScript. Scope is the accessibility of variables, functions, and objects in some particular part of your code during runtime. In other words, scope determines the visibility of variables and other resources in areas of your code. Here is a simple example that should clear any confusion:

```js
function foo() {
  var x = "declared inside function";
  // x can only be used in foo
  console.log(x);
}

console.log(x);
// Throws an error
```

Now that you understand what scope is, it is important to know that `const`s cannot exist in the same scope. For example, if we had already declared a `const` variable called `year`, we cannot declare another one in the same scope, but we are free to do so in any other scope:

```javascript
const year = 2015;
console.log(year);
// 2015

// ...

// declaring a const variable in the same 
// scope would cause a syntax error:
// "Identifier 'year' has 
// already been declared."
const year = 2016;

if (1 == 1) {
  // However, it is perfectly fine to do
  // so in a different scope
  const year = 2016;
  console.log(year);
  // 2016
}
```

---
## Practice

Consider the assignment:

```javascript
const enki = 42;
```

What will the following do?

```javascript
enki = 22;
// ???
```

But the following?

```javascript
if (true) {
  const enki = 22;
  // ???
}
```

* throw an error
* assign 22 to enki within the `if`'s scope
* also throw an error
* re-assign 22 to enki

---
## Revision

Is the following code valid? Why?

???

```javascript
const enki = 'enki';

if (true) {
   const enki = 'nk';
}
```

* yes, because the second assignment is in a different scope
* yes, because the value is changed
* no, because you can't redeclare a variable
* no, because the `if` block doesn't have it's own scope
