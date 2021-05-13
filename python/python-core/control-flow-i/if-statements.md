---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# If...else statements


---

## Content

Control flow is the *order* in which individual statements or functions are executed. Control flow statements give *choices* that result in *different outcomes*.

> The `if...else` statement is used in Python for this decision making.

```python
if <condition>:
  <execute this code>
```

The program will only execute the code *if the condition has been met*.

```python
num = 3
if num > 0:
    print(num, " is a positive number")
```

The code above will print `'3 is a positive number'`.

The `if` statement can be extended to include a *catch-all*, `else`, that will be executed if the condition is not met.

```python
num = -1
if num >= 0:
    print("Positive or Zero")
else:
    print("Negative number")
```

The code above will print `'Negative number'`.

> As you may have spotted, we can use *comparison operators* to create conditions in Python.

Comparison operators include:

`==` - *is equal to*
`!=` - *is not equal to*
`<` - *is less than*
`<=` - *is less than or equal to*
`>` - *is greater than*
`>=` - *is greater than or equal to*

Note that a single `=` is used for assigning values to variables, not for comparison.


---

## Practice

What does the following code snippet print?

```python
x = 3
if x < 3:
    print ('small')
else:
    print ('big')
```

???

- big
- small
- SyntaxError


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

- true
- SyntaxError
- false
- True
- False
 
