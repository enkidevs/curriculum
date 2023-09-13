---
author: lior-bd

category: must-know

type: normal

practiceQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap


revisionQuestion:
  context: standalone
  formats:
    - fill-in-the-gap
  preferredFormat: fill-in-the-gap



links:


---

# Variables

---
## Content

Here we'll look at some fundamental syntax rules for JavaScript.

### Variables

Variables are used to store information - each holds a value with a specific name. 

We can also change the value a variable holds, if needed:

```javascript
let firstName = "Enki";
firstName = "Changed"; // this works
```

We can also declare a variable using `const`, but in this case we cannot change what it points to:

```javascript
const firstName = "Enki";
firstName = "Changed"; // Error!
```

The final (and the oldest) way of declaring a variable in JavaScript is using `var`:

```javascript
var firstName = "Enki";
firstName = "Changed"; // this works
```

We'll learn more about the differences between `let`, `const`, and `var` later on.

---
## Practice

Which snippet will throw an error?

```js
// Option A
let answer = 42;
answer = 'life';
```

```js
// Option B
const answer = 42;
answer = 'life';
```

```js
// Option C
var answer = 42;
answer = 'life';
```

???

- Option B
- Option A
- Option C
- None of these


---
## Revision

Can we do the following declaration?

```js
let new = "Keywords";
```

???

- No
- Yes


---
## Footnotes


