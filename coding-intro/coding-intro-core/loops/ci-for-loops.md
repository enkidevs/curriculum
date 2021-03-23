---
author: kapnobatai136
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# For Loops


---

## Content

Let's start with the most used one: the for loop.

The idea behind these loops is that you are repeating an instruction **for each** item in a range or a list.

If, for example, you have this list of friends:

```plain-text
friends = [
  "John",
  "Dan",
  "Brad"
]
```

You can repeat an instruction **for each** friend using the for loop. In this example we'll make a grilled cheese sandwich[1]:

```plain-text
FOR EACH friend OF friends
  INSTRUCT make_a_grill_cheese_sandwich(
    cheese, 
    grater, 
    bowl, 
    bread, 
    butter, 
    pan, 
    plate
  )
ENDFOR
```

As we have mentioned, you can also use a range:

```plain-text
FOR seconds = 1 TO 20
  INSTRUCT wash_hands()
ENDFOR
```

In this example, we repeat the `wash_hands()` instruction 20 times.

> 💡 The [syntax](https://www.enki.com/glossary/general/syntax) differs for each programming language. When you start learning a specific one, loop functionality will be explained in detail.


---

## Practice

Complete the loop so that it repeats **five times**:

```plain-text
??? counter = 1 ??? ???
  INSTRUCT wash_hands()
???
```

- FOR
- TO
- 5
- ENDFOR


---

## Revision

Complete the loop so that it rings the alarm every day:

```plain-text
days = ["Monday", "Tuesday", ...]

??? EACH day ??? ???
  INSTRUCT ring_alarm()
???
```

- FOR
- OF
- days
- ENDFOR


---

## Footnotes

[1:Function]
Here is the `make_a_grill_cheese_sandwich` function:

```plain-text
FUNCTION make_a_grill_cheese_sandwich
  INPUT cheese, grater, bowl, bread, butter, pan, plate
  INSTRUCT cheese_bowl, sliced_bread = prepare_ingredients(
    cheese, 
    grater, 
    bowl, 
    bread
  )
  INSTRUCT sandwich = build_sandwich(
    cheese_bowl, 
    sliced_bread, 
    butter
  )
  INSTRUCT sandwich_on_plate = grill_sandwich(
    sandwich, 
    pan, 
    plate
  )
  OUTPUT sandwich_on_plate
ENDFUNCTION
```
