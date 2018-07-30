---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip
aspects:
  - introduction
  - workout

standards:
  python.standard-library-data.3: 10

tags:

  - speed-up-code



notes: ''

---

# Efficient concatenation with *join()*

---
## Content

Strings in Python are immutable. The advantage is that strings can be directly used as keys in dictionaries, and string copies can be shared among multiple variable bindings. But the disadvantage is that if you want to amend something in an existing string, then you have to create a new one. This leads to significant inefficiencies:

Example:

When you would like to build a string sequentially:
```python
s = ""
for substring in list:
    s += substring
```
The above code is actually a common mistake when building large strings. Instead, use:

```python
s = "".join(list)
```

Similarly, in some more complex examples, if you are doing:

```python
s = ""
for x in list:
    s += some_function(x)
```
A better and faster way is:

```python
slist = [some_function(elt) \
    for elt in somelist]
s = "".join(slist)
```

---
## Practice

Fill in the following code snippet such that it will concatenate all strings in the list:

```python
a = ["This", "is", "a", "list"]

a = ???.???

```

* ""
* join(a)
* concatenate(a)
* list
* a

---
## Revision

What will the following code snippet output:

```python

l = ["E","n","k","i"]

l = "".join(l)
```

???

* Enki
* E n k i
* E,n,k,i
