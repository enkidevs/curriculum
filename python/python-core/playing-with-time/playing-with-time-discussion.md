---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python playground

    # Start typing your code here:

---

# Test Yourself

---

## Content

Now that you've learned about time and date modules, it's time to practice!

How would you create a program where you create a date using the `datetime` module and separately print out all the different formats it provides?

To solve this, try using the following concepts:
- learned modules (`time`, `datetime`)
- importing modules(`import`, `from...import`)
- string format(`strftime()`, `f-strings` `%d`, `%a`, `%b`, `%Y`, `%H`,`%M`,`%S`)


If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.


---

## Footnotes

[1: Hints]

Start by importing a module:

```python
from datetime import datetime
```

Then, create a date using the module:

```python
# Example 1
today = datetime.today()

# Separately formatted print
print(today.strftime('%d'))
# 09
print(today.strftime('%a'))
# Tue
print(today.strftime('%b'))
# Feb
print(today.strftime('%Y'))
# 2021
print(today.strftime('%H'))
# 13
print(today.strftime('%M'))
# 02
print(today.strftime('%S'))
# 53
```


```python
# Example 2
today = datetime.today()

# Create a format
format = '%d %a %b %Y %H:%M:%S'

# Single formatted print
print(today.strftime(format))
# 14 Fri Apr 2023 11:47:16

# formatted using f-strings
print(f"{today:%d %a %b %Y %H:%M:%S}")
# 14 Fri Apr 2023 11:47:16

```

```python
# Example 3
timestamp = 1681474626

dt_from_timestamp = datetime.fromtimestamp(timestamp)

d = dt_from_timestamp.strftime("%d")
a = dt_from_timestamp.strftime("%a")
b = dt_from_timestamp.strftime("%b")
y = dt_from_timestamp.strftime("%Y")
h = dt_from_timestamp.strftime("%H")
m = dt_from_timestamp.strftime("%M")
s = dt_from_timestamp.strftime("%S")
hms = dt_from_timestamp.strftime("%H:%M:%S")


print(d, a, b, y, hms)
# 14 Fri Apr 2023 12:17:06
print(a)
# Fri
print(b)
# Apr
print(y)
# 2023
print(hms)
# 12:17:06

formatted = f"{d} {a} {b} {y} {h}:{m}:{s}"
print(formatted)
# 14 Fri Apr 2023 12:17:06
```
