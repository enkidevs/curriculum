---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal
aspects:
  - introduction
category: must-know

inAlgoPool: false

standards:
  python.identify-python-syntax.0: 10
  python.native-types-operations.0: 10
  python.control-structures.1: 10


---

# `if` statements

---
## Content

Python uses *booleans* to evaluate conditions. A boolean variable has two values, true and false, and one of these values is after a condition has been evaluated.

Using *comparison operators* is one way to create conditions in Python. Comparison operators include

- `==`, meaning "is equal to"
- `!=`, meaning "is not equal to"
- `<` and `<=` meaning "is less than" and "is less than or equal to"
- `>` and `>=` meaning "is greater than" and "is greater than or equal to"

The single `=` is used for assigning values to variables, not for comparison.

For example:

```python
# variable declaration and assignment
num = 6

# returns and prints True
print(num == 6)

# returns and prints False
print(num < 4)

# returns and prints True
print(num != 12)
```

Such conditions can be used to manipulate the execution of the program, through `if` statements:

```python
if (condition):
    doSomething()
```

An `if` statement is a conditional operator. If the condition evaluated to true then the indented code below the `if` statement will run, and if it's not true then this code won't run.

For example:

```python
x = 3
if (x < 5):
   print 'True!'
```
`if` statements can be extended to have an `else` statement. The standard python syntax for this is:

```python
if (condition):
    doSomething()
else:
    doSomethingElse()
```
The code following the `else` part of the statement will run if condition evaluates to false. For example:

```python
x = 3
if (x > 5):
    print('x is greater than 5!')
else:
    print('x is not greater than 5!')
```

---
## Practice

What does the following code snippet print?
???
```python
x = 3
if (x < 3):
    print ('small')
else:
    print ('big')
```


* big
* small
* SyntaxError

---
## Revision

What does the following code snippet print?
???
```python
x = 8
if (x == 8):
    print ('true')
else:
    print ('false')
```


* 'true'
* SyntaxError
* 'false'
* True
* False
