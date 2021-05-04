---
author: alexjmackey
type: normal
category: must-know
links:
  - '[Comparison Operators & If Else](https://youtu.be/7WkfzokHGqo){video}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# If Statement


---

## Content

Like most programming languages JavaScript has a number of flow control statements including the standard `if` and `if..else`.

```js
let isEnkiCoder = true;

if (isEnkiCoder) {
  // this executes
  // if above check
  // is equal to true
  console.log("if statement");
}

let coding = "fun";

if (coding === "fun") {
  // this executes
  // if above check
  // is equal to true
  console.log(" is cool");
}
```

The output of the code above is:

```sh
if statement is cool
```

### `if..else`

We can test multiple conditions using `if..else`. Going top to bottom, the first `if` check that is found to be `true` will be executed. If none of them are `true` then the final `else` condition is executed (if it exists):

```js
const codingSkill = "learning";

if (codingSkill === "beginner") {
  console.log("keep going!");
} else if (codingSkill === "ninja") {
  console.log("hello sensei");
} else {
  console.log("still figuring it out");
}
```

The output of the code above is:

```sh
"still figuring it out"
```


---

## Practice

How would you write an `if/else if` statement?

```js
if (condition <= 0) {
  ...
} ??? ??? (condition > 0) {
  ...
}

```

- `else`
- `if`
- `case`
- `break`
- `if else`
- `else if`
- `switch`
- `case`
- `==`
 
