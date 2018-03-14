# Efficient concatenation with *join()*
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

standards:
  py.standard-library-data.3: 10

tags:

  - speed-up-code

notes: ''

---
## Content

Strings in Python are immutable. The advantage is that strings can be directly used as keys in dictionaries, and string copies can be shared among multiple variable bindings. But the disadvantage is that if you want to amend something in a existing string, then you have to create a new one. This leads to significant inefficiencies:

Example:

When you would like to build a string sequentially:
```
s = ""
for substring in list:
    s += substring
```
The above code is actually a common mistake when building large strings. Instead, use:
```
s = "".join(list)
```

Similarly, in some more complex examples, if you are doing:
```
s = ""
for x in list:
    s += some_function(x)
```
A better and faster way is:
```
slist = [some_function(elt) \
    for elt in somelist]
s = "".join(slist)
```