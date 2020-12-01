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

## Content

Previously we have shown you that when a `NumPy` array and a Python list have the exact same values, the `NumPy` array will take up less space. 

Now, here are some differences between them:

The speed at which these two are computed shows an even greater difference.

Here are the results of multiplying a list by another list and saving it into a new list. As well as multiplying one `NumPy` array with another and saving in a new `NumPy` array:

```plain-text
List multiplication: 0.014016151428222656 seconds
NumPy Array multiplication: 0.0009708404541015625 seconds
```

When comparing these two values, the `NumPy` array was `14.4371316` times faster at completing the same task.

For larger sets of data, `NumPy` performs even faster.

Also, you cannot perform mathematical operations on a list like you can on `NumPy` arrays. For instance, You could divide/multiply every value in an array with a single line:

```python
someArray = np.array([1,2,3,4])
result = someArray * 2

print(result)
>>> [2, 4, 6, 8]
```
If you tried doing the same on a list, you would get an error.


> To learn how to calculate the computational time of a list/`NumPy` array, or how to perform other simple mathematical operations, check out the links in the "Learn More" section.

---
## Practice

While you cannot directly perform mathematical operation on ??? you can on ???.

- Python lists
- NumPy arrays