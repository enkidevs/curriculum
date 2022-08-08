---
author: emmab
tags:
  - introduction
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

# If...else Statements

---

## Content

The flow of the program depends on the order in which individual commands are executed. Control flow statements like `if...else` allow us to manage the order using conditions.

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
num = 1
if num == 0:
  print("Zero")
else:
  print("Positive number")
```

The code above will print `'Positive number'`.

> 💡 A single `=` is used for assigning values to variables, and the double `==` for comparison. There are several different *comparison operators*.

Comparison operators include:

| Operator            | Name                                              |
| ------------------- | ------------------------------------------------- |
| `==`                | is equal to                                       |
| `!=`                | is not equal to                                   |
| `<`                 | is less than                                      |
| `<=`                | is less than or equal to                          |
| `>`                 | is greater than                                   |
| `>=`                | is greater than or equal to                       |


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

```python
x = 8
if (x == 8):
  print ('true')
else:
  print ('false')
```

???

- true
- SyntaxError
- false
- True
- False
 
