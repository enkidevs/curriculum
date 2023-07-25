---
author: stefkn
type: normal
category: discussion
links:
  - >-
    [Functional Programming in Python: built-in
    functions](https://docs.python.org/3/howto/functional.html#built-in-functions){website}
  - >-
    [map, filter, and
    reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}
---

# The map Function


---

## Content


The `map` built-in applies a given function to all elements of a given iterable. 

This allows us to avoid imperative programming[1], often resulting in more easily legible code. 

In the functional programming style[2], we can achieve the previous code with:

```python
def addTwo(x):
  return x + 2
scores = [1, 0, 4, 5]
print(list(map(addTwo, scores)))
# Result: [3,2,6,7]
```


> 🥳 Today is 5 of your users' birthdays! Will you use a `for` loop or the `map` function to increment their ages?


---

## Footnotes


[1:Imperative Programming]
Imperative programming, as opposed to declarative programming (of which functional programming is a subtype) is the programming paradigm where statements are used to change a program's state. Imperative style requires certain mechanisms such as direct data modification (mutability) and looping statements. These mechanisms sometimes detrimentally affect readability and efficiency.

An easy rule of thumb is that imperative programming specifies **how** (what steps are taken during execution) a program should operate. This is in contrast to declarative languages which focus on **what** is to be computed instead.

[2:Functional Programming]
As explained in the above footnote, functional programming is a type of declarative language, which focus on **what** is to be computed. Functional programming eschews the idea of state from imperative programming and instead reduces a program down into functions applied to immutable data (data that cannot be directly modified). Notice how in the code example, we use `map` to apply our lambda function to each element in the list, but the items in the original list itself are **not** modified. We take each output from the lambda function and create a new copy of the original list with our new answers. This is the essence of *immutability*, one of the most important concepts of functional languages.
 