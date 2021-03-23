---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN
    Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Let (Part 2)


---

## Content

`let` is particularly useful when used with loops and inner functions.

It solves an issue you may have come across before when attempting to add event handlers to multiple elements. Let's look at an example of what we mean. 

The code below looks like it will output `0 1 2 3 4` to the console but will actually output `5 5 5 5 5`.

```javascript
function example() {
  var funcs=[];

  for (var i = 0; i < 5; i++) {
    funcs.push(
      function(){console.log(i)}
    );
  }

  for(var func of funcs){
    func();
  }
}

example();
// 5 5 5 5 5
```

This happens because `i` is declared using `var`, which makes it a global variable within the `example` function. This means that each function added to the `funcs` array is referring to the same instance of `i` (the one available globally within `example`).

Variable `i` ends up being `5` at the end of the loop, so we end up logging this final value in each function.

Now let's change the loop declare `i` using the `let` keyword:

```javascript
for (let i = 0; i < 5; i++) {
...
}
// 0 1 2 3 4
```

Because `let` is block-scoped[1], it will get separately re-created during each iteration of the `for` loop and not be available globally. The code will now run as expected as each loop iteration refers to a different instance of `i`.


---

## Practice

What is the output of the following snippet?

```javascript
var letFuncs = [];
for (let i = 0; i < 3; i++) {
  letFuncs.push(
    function() {
      console.log(i)
    }
  )
}
for (func of letFuncs) {
  func()
}
// ???

```

- `[0, 1, 2]`
- `[1, 2, 3]`
- `[3, 3, 3]`


---

## Revision

What is the output of the two log statements?

```javascript
var varFuncs=[];

for (var i = 0; i < 3; i++) {
   varFuncs.push(
      function() {
        console.log(i)
      }
   );
}

for(func of varFuncs){
   func();
}
// ???

var letFuncs = [];
for (let i = 0; i < 3; i++) {
  letFuncs.push(
    function() {
      console.log(i)
    }
  )
}
for (func of letFuncs) {
  func()
}
// ???
```

- `[3, 3, 3]`
- `[0, 1, 2]`
- `[4, 4, 4]`
- `[2, 2, 2]`
- `[1, 2, 3]`


---

## Footnotes

[1:Block-scope]
By this we mean that any variable defined with `let` (or `const`) is only accessible in its scope (between the nearest pair of `{}`). This is best shown through an example:

```js
if (true) {
  let foo = 1;
}
console.log(foo);
// undefined
```

Here, `foo` is only accessible in the `if` scope.
 
