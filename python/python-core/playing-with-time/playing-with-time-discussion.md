---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Test Yourself

---

## Content

Now that you've learned about time and date modules, it's time to practice!

How would you create a program where you create a date using the `datetime` module and separately print out all the different formats it provides?

To achieve this, you should use some of the following concepts:
- learned modules (`time`, `datetime`)
- importing modules(`import`, `from...import`)
- string format(`strftime()`, `%d`, `%a`, `%b`, `%Y`, `%H`,`%M`,`%S`)


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
# 09 Tue Feb 2021 13:02:53
```

```python
# Example 3
timestamp = 1612876225

dt_from_timestamp = datetime\
          .fromtimestamp(timestamp)

d = date_time.strftime("%d")
a = date_time.strftime("%a")
b = date_time.strftime("%b")
y = date_time.strftime("%Y")
h = date_time.strftime("%H")
m = date_time.strftime("%M")
s = date_time.strftime("%S")

hms = date_time.strftime("%H:%M:%S")

print(d, a, b, y, hms)
# 09 Tue Feb 2021 14:10:25
print(a)
# Tue
print(b)
# Feb
print(y)
# 2021
print(hms)
# 14:10:25
```
