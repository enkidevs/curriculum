---
author: alexjmackey
type: normal
category: must-know
links:
  - '[Comparison Operators & If Else](https://youtu.be/7WkfzokHGqo){video}'
---

# If Statement


---

## Content

Like most programming languages JavaScript has a number of flow control statements including the standard `if` and `if..else`.

```plain-text
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

```plain-text
if statement is cool
```

### `if..else`

We can test multiple conditions using `if..else`. Going top to bottom, the first `if` check that is found to be `true` will be executed. If none of them are `true` then the final `else` condition is executed (if it exists):

```plain-text
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

```plain-text
"still figuring it out"
```


---

## Practice

How would you write an `if/else` statement?

```plain-text
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
 
