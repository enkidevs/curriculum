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

links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/const){website}'

aspects:
  - introduction


---
# Const (Part 1)

---
## Content

The *`const`* (constant) keyword is new to ES6 and creates a variable that cannot be reassigned.

When declaring a constant variable, you must assign an initial value otherwise you
will receive an error.

To declare a constant use the *`const`* keyword where you would have used *`var`*:

```javascript
const year = 2016;
```

Once a `const` is declared any attempts to reassign the value will cause an error:

```javascript
year = 2017; //error
year = "future"; //error
```

`const`s can exist in different scopes for example if we had already declared a `const` variable called `year` it is valid to declare another as long as it exists in another scope:

```javascript
const year = 2015;

if (1 == 1) {
   const year = 2016; //valid
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
* assign 22 to enki within the if's scope
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
 
