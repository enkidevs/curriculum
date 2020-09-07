---
author: kapnobatai136

type: normal

category: must-know

---

# Counter Loops

---
## Content

Let's start with the most used one: the counter loop.

You might've already heard about these, they are also called `for loops`. The idea behind these loops is that you create a counter variable, a maximum value for that counter, and the increment step.

Remember the `make_a_grill_cheese_sandwich` function we wrote[1]? Let's use it to make three sandwiches:

```plain-text
FOR counter = 1 TO 3
 INSTRUCT make_a_grill_cheese_sandwich(cheese, grater, bowl, bread, butter, pan, plate)
ENDFOR
```

You're not limited to numbers. You could, for example, use values in a list. 

Say you have a list of all your friends, and you want a sandwich made for each. You would write:

```plain-text
friends = [
  "John",
  "Dan",
  "Brad"
]

FOR EACH friend OF friends
  INSTRUCT make_a_grill_cheese_sandwich(cheese, grater, bowl, bread, butter, pan, plate)
ENDFOR
```

> 💡 The [syntax](https://www.enki.com/glossary/general/syntax) differs for each programming language. When you start learning a specific one, loop functionality will be explained in detail.

---
## Practice

Complete the loop so that it repeats **five times**:

```plain-text
??? counter = 1 ??? ???
  INSTRUCT wash_hands()
???
```

* FOR
* TO
* 5
* ENDFOR

---
## Revision

Complete the loop so that it rings the alarm every day:

```plain-text
days = ["Monday", "Tuesday", ...]

??? EACH day ??? ???
  INSTRUCT ring_alarm()
???
```

* FOR
* OF
* days
* ENDFOR

---
## Footnotes

[1:Function]
Here is the `make_a_sandwich` function:
```plain-text
FUNCTION make_a_grill_cheese_sandwich
  INPUT cheese, grater, bowl, bread, butter, pan, plate
  INSTRUCT cheese_bowl, sliced_bread = prepare_ingredients(cheese, grater, bowl, bread)
  INSTRUCT sandwich = build_sandwich(cheese_bowl, sliced_bread, butter)
  INSTRUCT sandwich_on_plate = grill_sandwich(sandwich, pan, plate)
  OUTPUT sandwich_on_plate
ENDFUNCTION
```