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
  context: standalone
---

# `if...elif...else` 

---

## Content

What if we want to change the behavior of our program based on multiple conditions?

We can add another `if` into our `if...else` statement!

In terms of syntax, this is written as `elif`. It's shorthand for `else if`.

```python
if condition:
  print('do something')
elif condition:
  print('do something else')
else: 
  print('do some other thing')
```

If the condition for `if` has not been met, the program will check the `elif`. If it meets this condition it will execute the `elif` body of code.

The `else` code is only executed if none of the other conditions have been met.

```python
num = 0
if num > 0:
  print('Positive number')
elif num == 0:
  print('Zero')
else:
  print('Negative number')
```

If we assign the value 0 to `num`, our program above will print `'Zero'`.

> There is no limit to how many `elif` statements you can write.


---

## Practice

Complete the following `if` statement to return `'You're at the start of a great journey!'`.

```python
days_coding = 2

if days_coding == 7:
  print("You've been coding for a week!")
??? days_coding ??? 7:
  print("More than a week - keep it up!")
???:
  print("You're at the start of a great journey!")
```

- `elif`
- `>`
- `else`
- `=`
- `if`
- `<`


---

## Revision

What does the following code snippet print?

```python
name = 'George'

if name == 'Stefan':
  print("Hey Stefan")
elif name == 'Andrei':
  print('Hey Andrei')
else:
  print("Hey, what's your name?")
```

???

- `Hey, what's your name?`
- `Hey Stefan`
- `Hey Andrei`
- SyntaxError
