---
author: kapnobatai136

type: normal

category: must-know

---

# Debugging

---
## Content

"Robot, go **make a sandwich**". Between the beeping robot sounds, you notice that something is wrong!

Take a look at the functions here[1] and see if you can spot anything wrong. Discuss your findings in the comments and see what others wrote.

> ❗ Remember, computers take all your instructions literally, so you have to be very specific[2].

Uh-oh, we instructed the robot to butter the bread instead of the slices 😅.

> 💡 A mistake or problem in your code is often referred to as a bug[3]. Solving the issue is called debugging.

Instead of searching through all the instructions, you know that the issue is in the `assemble sandwich` function:

```plain-text
FUNCTION assemble_sandwich
  INPUT: bowl with cheese, sliced bread, butter.
  Instruct the robot to butter the bread slices.
  ...
ENDFUNCTION
```

Done! You've fixed your first bug 🐛 and can now enjoy the rest of your Saturday with a grilled cheese sandwich. Learning functions couldn't get better!

To recap, functions are useful because:
- they break down big programs into "blocks"
- they increase readability and organization
- they make testing and identifying bugs much easier

---
## Footnotes

[1:Functions]

```plain-text
FUNCTION prepare_ingredients
  INPUT: cheese, grater, bowl, bread.
  Instruct the robot to prepare the bowl and grater.
  Instruct the robot to grate cheese in the bowl.
  Instruct the robot to slide the bread.
  OUTPUT: a bowl with cheese, sliced bread.
ENDFUNCTION

FUNCTION assemble_sandwich
  INPUT: bowl with cheese, sliced bread, butter.
  Instruct the robot to butter the bread.
  Instruct the robot to add the cheese to each slice.
  Instruct the robot to combine the slices.
  OUTPUT: sandwich with butter and cheese.
ENDFUNCTION

FUNCTION finish_grilled_cheese
  INPUT: sandwich with butter and cheese, pan, plate.
  Instruct robot to preheat the pan.
  Instruct robot to fry the sandwich on each side.
  Instruct robot to place the grilled cheese sandwich on the plate.
  OUTPUT: grilled cheese sandwich.
ENDFUNCTION
```

[2:Specific]
This is best explained through a joke:

> My wife said: "Please go to the store and buy a carton of milk and if they have eggs, get six.". 

> I came back with 6 cartons of milk. 

> She said, "Why in the hell did you buy six cartons of milk?"

> "They had eggs"

[3:Bug]
Using this term to describe an issue predates computer science. One of the earliest appearances is in the 1850s where Thomas Edison used "bug" when mentioning a problem with one of his machines.


In the 1940s, when scientists were working on one of the first computers (Mark II) they found a moth inside which was causing complications. They carefully removed the moth and taped it inside the logbook saying: "First actual case of bug being found."

![moth-logbook](https://img.enkipro.com/986de0ad50f61fd18342fa3366a2cbd5.jpeg)