# `if` statements
author: tommarshall

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

The standard Python syntax for an `if` statement is:

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
```
x = 3
if (x < 3):
    print (‘small’)
else:
    print (‘big’)
```

*big
*small
*error

---
## Revision

What does the following code snippet return?
???
```
x = 8
if (x = 8):
    print (‘true’)
else:
    print (‘false’)
```

*Invalid Syntax
*True
*False