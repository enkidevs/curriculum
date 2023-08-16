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

This allows us to avoid imperative programming, often resulting in more easily legible code. 

In the functional programming style[1], we can achieve the previous code[2] with:

```python
def addTwo(x):
  return x + 2
scores = [1, 0, 4, 5]
print(list(map(addTwo, scores)))
# Result: [3,2,6,7]
```


> 🥳 Today is 5 of your users' birthdays! Will you use a `for` loop or the `map` function to increment their ages?
>
> Leave a comment or view other comments for inspiration before moving on.


---

## Footnotes


[1:Functional Programming]
Functional programming is declarative, which means it lets us describe the result without needing to specify each step for how to get it.

Its focus is on **what** is to be computed. 

Functional programming reduces a program down into functions applied to immutable data (data that cannot be directly modified).

[2: Imperative Implementation]
 ```python
scores = [1, 0, 4, 5]
for i in range(0, len(scores)):
  scores[i] = scores[i] + 2
```