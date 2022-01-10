---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [more on
    generators](http://www.python-course.eu/python3_generators.php){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Generator of generators


---

## Content

Last insight, we've seen how **recursion** and **generators** can work together. Now, let's see how we can combine two **generators**.  

Consider the following example:

```python
def fibonacci():
    #Generating fibonacci sequence
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

def firstn(g, n):
	for i in range(n):
		yield next(g)

print(list(firstn(fibonacci(), 10)))
```

Because the condition present in the `while` loop will never be `False`, the first **generator** will compute indefinitely. Now, we won't ever need an **infinite sequence**. what we would need instead is the first `n` **elements** of the sequence or the `n`th **element** of the sequence.

This is why we define the second **generator** called `firstn` which accepts two **parameters**:

- `g` which is a generator;
- `n` which defines the number of **elements** our sequence will contain.

Finally, we print a list containing the first 10 *elements* of the *Fibonacci sequence*:

```python
# Output:
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```


---

## Practice

We want to generate the first `n` perfect squares. Fill the gaps accordingly:

```python
def perfect_square():
  x = 1
  while ???:
    yield x * x
    x += 1
def first_n(g,n):
    for i in ???(n):
      ??? next(g)
```

- True
- range
- yield
- for
- False
- yeild
- if


---

## Revision

What will the output be?

```python
def power_of_two():
    x = 2
    while True:
      yield x
      x *= 2
def n_power(g,n):
    for i in range(n):
      yield next(g)

print(list(n_power(power_of_two(), 4)))
```

???

- `[2, 4, 8, 16]`
- `[1, 2, 4, 8]`
- `[2, 4, 8, 16, 32]`
 
