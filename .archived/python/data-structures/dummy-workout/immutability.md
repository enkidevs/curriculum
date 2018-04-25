---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
# Immutability

---
## Content

So far we've mentioned types and data structures whose states cannot be modified after the object has been created. The shared property is called **immutability**.

Before digging into details, consider this example:
```python
a = 'a'
b = a
b += 'b'
```
What would `print(a)` output? Both the intuitive and correct answer is:
```python
print(a)
# a
```
What about the following snippet?
```python
l = [1, 2, 3]
k = l
k += [4, 5]
print(l)
```
Would the output be `[1, 2, 3]`, as before? No, as lists are **mutable** in Python:
```python
print(l)
# [1, 2, 3, 4, 5]
```
Which is tricky! A moment of distraction when writing a function and you could end up with a different data than the one expected.

**Mutable** objects (lists, dictionaries, sets, classes etc.) are containers which, no matter how many times you would add or remove items from, would still reference the same address in memory. In the example above, the assignment `k = l` means *k now references the sequence of bytes in memory that l is also referencing*. Modifying those bytes would cascade to both variables.

**Immutable** objects (ints, floats, strings, tuples, fronzensets) cannot have their content changed without changing the whole memory reference.

Immutability helps with internal optimization (which is crucial for big applications) and prevents threading issues. As a beginner, you probably won't have to deal with these problems. But to understand why the following errors might occur might be useful:
```python
s = 'test'
s[0] = 'r'
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# TypeError: 'str' object does not
# support item assignment
```
As the string is *immutable*, you aren't allowed to change their internal value. You could instead do this:
```python
# using substrings
s = 'r' + s[1:]
# or using lists
l = list(s)
l[0] ='r'
s = ''.join(l)
```

---
## Revision

Which of the following types is immutable in Python?

???
* tuple
* list
* dictionary
* set
