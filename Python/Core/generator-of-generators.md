# Generator of generators.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more on generators](http://www.python-course.eu/python3_generators.php)'

---
## Content

Last insight, we've seen how **recursion** and **generators** can work together. Now, let's see how can we combine the power of two **generators**.

Consider the following example:

```
def fibonacci():
    """Generating fibonacci sequence"""
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

def firstn(g, n):
	for i in range(n):
		yield next(g)

print(list(firstn(fibonacci(), 10)))
```

Because the condition present in the `while` loop will never be `False`, the first **generator** will compute infinitely. Now, we won't ever need an **infinite sequence**. What we would need is the first `n` **elements** of the sequence or the `n`th **element** from the sequence.

This is why we define the second **generator** called `firstn` which accepts two **parameters**:
- `g` which is a generator;
- `n` which defines the number of **elements** our sequence will contain.

Finally, we create a **list** containing the first `10` **elements** of the **fibonacci sequence** and **print** it.

```
# Output:
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```


---
## Practice

Considering the example above, what would
`print(list(firstn(fibonacci(), 5)))` print?
???

* `[0,1,1,2,3]`
* `[1,1,2,3,4]`
* `[0,1,1,2,3,4]`

---
## Revision

```
def power_of_two():
    x = 2
    while True:
      yeild x
      x *= 2
def n_power(g,n):
    for i in range(n)
      yield next(g)

print(list(n_power(power_of_two(), 4)))
```
What will the output be?
???

* `[2, 4, 8, 16]`
* `[1, 2, 4, 8]`
* `[2, 4, 8, 16, 32]`
