---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Creating Arrays with NumPy

---
## Content

Unlike regular Python lists, `numpy` array values have to be homogeneous. 

> You cannot have a string and an int in the same array. 

Here's how you can create a simple 1-D array with numpy:
```python
some1DArray = np.array([1, 2, 3])
```

To check the contents of the array:
```python
print(some1DArray)
```

The output of this array is:
```plain-text
[1 2 3]
```

Here is how you can create a 2-D array:
```python
some2DArray = np.array(
  [
    [1, 2, 3], 
    [4, 5, 6]
  ]
)
```

The output of the 2-D array is:
```python
print(some2DArray)

[[1 2 3]
 [4 5 6]]
```

Here is how you can create a 3-D array:
```python
some3DArray = np.array(
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]
)
```

The output of the 3-D array is:
```python
print(some3DArray)

[[1 2 3]
 [4 5 6]
 [7 8 9]]
```

There are different attributes you can use on `numpy` arrays:

| Function | Description                                             |
|----------|---------------------------------------------------------|
| dtype    | Show the data type of the array.                        |
| itemsize | Show the size (in bytes) of every element in the array. |
| nbytes   | Show the total size of the array in bytes.              |
| ndim     | Show the number of dimensions and array has.            |
| shape    | Show the size of each dimension of the array            |
| size     | Show the total size of the array.                       |


You can use these on any array to get the required data.

For instance, here are all of the above attributes on the 2-D array:

```python
print("some2DArray's dtype: ", some2DArray.dtype)
print("some2DArray's itemsize: ", some2DArray.itemsize)
print("some2DArray's nbytes: ", some2DArray.nbytes)
print("some2DArray's ndim: ", some2DArray.ndim)
print("some2DArray's shape: ", some2DArray.shape)
print("some2DArray's size: ", some2DArray.size)
```

Here are the outputs:
```plain-text
some2DArray's dtype:  int32
some2DArray's itemsize:  4
some2DArray's nbytes:  24
some2DArray's ndim:  2
some2DArray's shape:  (2, 3)
some2DArray's size:  6
```

---
## Practice

Create a 2-D array called "someArray" with integer values.

```Python
??? = (
  [
    ???
    ???
  ]
)
```

- someArray
- [1, 3, 5],
- [2, 4, 6]
- {1, 3, 5},
- {2, 4, 6}
- Some Array

---
## Revision

With `numpy`, you can only create 1-D and 2-D arrays.

???

- False
- True