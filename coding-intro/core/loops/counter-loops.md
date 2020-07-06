---
author: kapnobatai136

type: normal

category: must-know

---

# Counter Loops

---
## Content

You might've already heard about these, they are also called `for loops`. The idea behind these loops is that you create a counter variable, a maximum value for that counter, and the increment step.

```plain-text
FOR counter = 1 to 3
  Make a sandwich.
ENDFOR
```

You're not limited to numbers. You could, for example, use values in a list. Say you have a list of all you friends, and you want a sandwich made for each. You would write:

```plain-text
friends = [
  "John",
  "Dan",
  "Brad"
]

FOR EACH friend of friends
  Make a sandwich.
ENDFOR
```

> 💡 The [syntax](https://www.enki.com/glossary/general/syntax) differs for each programming language. When you start learning a specific one, loop functionality will be explained in details.

---
## Practice

Complete the loop so that it repeats **five times**:

```plain-text
??? counter = 1 ??? ???
  Wash hands.
???
```

* FOR
* to
* 5
* ENDFOR

---
## Revision

Complete the loop so that it rings the alarm every day:

```plain-text
days = ["Monday", "Tuesday", ...]

??? EACH day ??? ???
  Ring alarm
???
```

* FOR
* of
* days
* ENDFOR