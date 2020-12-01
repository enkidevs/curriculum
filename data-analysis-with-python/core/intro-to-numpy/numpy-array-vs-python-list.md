---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to

links:
- '[List vs ndarray](geeksforgeeks.org/python-lists-vs-numpy-arrays/){documentation}'
- '[List vs Numpy array](https://stackoverflow.com/questions/993984/what-are-the-advantages-of-numpy-over-regular-python-lists){documentation}'
- '[Numpy arrays vs lists](https://learnpython.com/blog/python-array-vs-list/){documentation}'

---

# NumPy Array vs python List

---
## Content

Python comes with a built-in function called `list`.

These lists can store multiple values in a single variable.

Unlike `NumPy` arrays, the values in a `list` can be both homogenous and heterogeneous.

You can have integers, strings, dictionaries, other lists, and more in a single list. Or, you can also have a single type only.

On the other hand, even though `NumPy` arrays are homogenous, they take up less memory, are much faster, and allow for different manipulations compared to lists.

For instance, let's say we have a `list` of 100 values and a `NumPy` array with the same values. 

If we were to compare the sizes, in bytes, of the two we would get this output:
```plain-text
List size in bytes:  4800
Numpy array size in bytes:  4000
```

The `NumPy` array has 800 bytes less than a `list` with the same values.

> We will talk about other differences in the next insight.

> To learn how to get the size of a list or an array, check out the links in the "Learn More" section.

---
## Practice

??? can contain both homogenous and heterogenous values while ??? can only hold homogenous values.

- Lists
- NumPy arrays

---
## Revision

??? have faster computation times and require less memory than ???.

- NumPy arrays
- built-in python lists