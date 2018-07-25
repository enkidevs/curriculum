---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.modules.0: 10


links:

  - '[More about import](https://www.digitalocean.com/community/tutorials/how-to-import-modules-in-python-3){website}'


---

# The import statement

---
## Content

You can use any Python source file as a **module** by executing an `import` statement in some *other Python source file*.

Importing is achieved through the provided `import` statement whose syntax looks like:

```
import module1[, module2[, ... moduleN]

# note that [] refers to optional arguments
```

When the *interpreter* encounters an `import` statement, it **imports** that specific module inside, as long as it exists in the search path. A **search path** is simply the list of directories where the interpreter searches for the specified module.

We will `import` and use a *method* exposed by the `adder` module[1] we defined in the previous insight ("What are modules?"):

```python
# we need to import the module first
import adder

# now we can use methods exposed by it
result = adder.add(3,4)
print(result)

# This will be the output: 7
```


Note that a module is imported just **once**, regardless of the times it's used as argument for the `import` statement.

---
## Practice

We have defined the `counter` module that's supposed to `increment` its state with every function call.
Fill in the gaps such that the module will be successfully imported and ran.

```python
# counter.py
count = 0

??? ???
  global count
  count += 1
  print(x)
  return count

```

```python
# main.py
??? ???

counter.increment() # 1
counter.increment() # 2

```


* `def`
* `increment():`
* `import`
* `counter`
* `increment()`
* `increment:`
* `as`
* `counter`
* `count`
* `print`
* `counter;`

---
## Revision

Fill in the gaps such that the defined module is successfully imported and run:
```python
# subtractor.py

def subtract(a, b):
  result = a - b
  print(f'{a} - {b} is: {result}')
  return result
```

```python
# main file
??? ???

subtractor.???(10, 2)
# 10 - 2 is: 8
```


* `import`
* `subtractor`
* `subtract`
* `subtractor;`
* `subtractor()`
* `print`
* `subtract()`

---
## Footnotes
[1:adder]
Consider the previously defined module in `added.py`:
```python
def add(a, b):
    sum = a + b
    print("The sum is: ", sum)
    return sum
```
