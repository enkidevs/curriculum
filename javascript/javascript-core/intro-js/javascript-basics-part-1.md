---
author: nem035
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Variables


---

## Content

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

> 💡 If you're unsure what a variable is, check out the [variables lesson](https://app.enki.com/insights/programs-and-data) in our [Coding Intro](https://app.enki.com/skill/coding-intro) topic.

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
