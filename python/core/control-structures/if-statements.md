---
author: tommarshall

levels:

  - beginner

type: normal

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

Python uses _booleans_ to evaluate conditions. A boolean variable has two values, true and false, and one of these will be returned once a condition has been evaluated.

The `=` character can be combined with itself and other characters for a number of uses:

- `=` is used for variable assignment
- `==` is used for a boolean comparison
- `!=` means is not equal to

For example:

```python
# variable declaration and assignment
num = 6

# returns and prints true
print(num == 6)

# returns and prints false
print(num < 4)

# returns and prints true
print(num != 12)
```

Such conditions can be used to manipulate the execution of the program, through `if` statements:

```python
if (condition):
    doSomething()
```

An `if` statement is a conditional operator, where if a condition is true then a certain piece of code will run, and if it's not true then this code won't run.

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

The `else` part of the statement will run if the if condition evaluates to be false. For example:

```python
x = 3
if (x > 5):
    print('x is greater than 5!')
else:
    print('x is not greater than 5!')
```

---

## Practice

What does the following code snippet return?
???

```python
x = 3
if (x < 3):
    print ('small')
else:
    print ('big')
```

- big
- small
- error

---

## Revision

What does the following code snippet return?
???

```python
x = 8
if (x = 8):
    print (‘true’)
else:
    print (‘false’)
```

- Invalid Syntax
- True
- False
