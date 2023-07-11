---
author: lior-bd
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

# lambda functions with map

---

## Content

We can also use *lambda functions*[1] with `map` to contain our function in one line:

```python
scores = [1, 0, 4, 5]
newscores = list(map(lambda x: x+2, scores))
# Result: [3, 2, 6, 7]
```

The above lambda function adds 2 to each number in our list.

*Remember, in functional programming, functions can take functions. So, instead of a list of data, `map` may take a list of functions, and output a list of new functions. This gives a sense of how versatile and useful the `map` function can be.*

---

## Practice

Let's say we have a list, called `promises`. We want to `make_good` on all our promises, where `make_good` is a previously-defined function that takes a string. Fill in the blanks in the code below to apply `make_good` to all elements in `promises`.  

```python
promises = ['learn css', 'learn js', 'buy milk', 'be excellent to each other']
promises = ???(???, ???)
```

- `map`
- `make_good`
- `promises`
- `lambda x: x*2`
- list
- reduce
- filter


---

## Revision

We are using the map function on two lists of integers at the same time. What is the output from the following code snippet?

```python
scores = [1, 0, 4, 5]
scores2 = [1, 1, 1, 1]
newscores = map(
  lambda x, y : x+y, scores, scores2)
print(newscores)
```

???

- `[2, 1, 5, 6]`
- `[6, 5, 1, 2]`
- `[1, 0, 4, 5, 1, 1, 1, 1]`
- `[1, 1, 1, 1, 1, 0, 4, 5]`

---
[1: Lambda functions]
Lambda functions in Python are small, anonymous functions that are defined using the lambda keyword, rather than the traditional def keyword. They can take any number of arguments but can only have one expression, making them ideal for simple, quick functions that are used on-the-fly in places like function arguments.