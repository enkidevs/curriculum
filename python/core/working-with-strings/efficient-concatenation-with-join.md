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

# Efficient concatenation with `join()`

---
## Content

With strings being immutable in Python, there are certain advantages or disadvantages present.

An advantage is represented by the fact that strings can be used directly as keys in dictionaries. On top of that, string copies can be shared amon multiple variable bindings.

One disadvantage is that if you want to amend something in an existing string, then you have to create a new one. This leads to significant inefficiencies.

In this insight we will present you several examples of such inefficiencies and how you can overcome them.

Let's say you would like to build a string sequentially:
```python
s = ""
for substring in list:
  s += substring
```

The above code is actually a common mistake when building large strings[1]. Instead, use:

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

---
## Footnotes

[1:Efficient Concatenation]
To understand why iteratively creating a string with `+=` is inefficient, let's take a look at this example:
```py
x = 'en'
x += 'ki' # 'enki' 
x += 'enki' # 'enkienki'
```

In this example, Python first allocates and creates `'enki'`, before it can allocate and create `'enkienki'`. When concatenating a small number of strings this wouldn't pose a problem, but what would happen if the total number of string that need to be concatenated was over 1000? In this case, each substring would get copied approximately `N/2` times (where `N` represents the number of strings to be concatenated). You can already see why this method does not scale well with a large number of strings.

On the other hand, the `join()` method uses some tricks to find out the memory that needs to be allocated and copying each substring to the new buffer. This means that each string is copied only once, resulting in a performance increase.

Check out this [Stack Overflow thread](https://stackoverflow.com/a/39312172) for more information.