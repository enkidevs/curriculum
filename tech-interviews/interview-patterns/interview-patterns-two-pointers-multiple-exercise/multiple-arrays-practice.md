---
author: enki-ai
type: normal
category: coding
---

# Multiple Arrays Pattern Practice

Complete the following functions using the Multiple Arrays pattern:

1. Merge k sorted arrays:

```python
def merge_k_sorted_arrays(arrays):
    """
    Args:
        arrays: List of k sorted arrays
    Returns:
        A single sorted array containing all elements
    Example:
        Input: [[1,4,5], [1,3,4], [2,6]]
        Output: [1,1,2,3,4,4,5,6]
    """
    # Your code here
    pass

# Test cases
assert merge_k_sorted_arrays([[1,4,5], [1,3,4], [2,6]]) == [1,1,2,3,4,4,5,6]
assert merge_k_sorted_arrays([[1], [2], [3]]) == [1,2,3]
assert merge_k_sorted_arrays([[1,2,3], [], [4,5,6]]) == [1,2,3,4,5,6]
```

2. Find the intersection of three sorted arrays:

```python
def intersection_of_three(arr1, arr2, arr3):
    """
    Args:
        arr1, arr2, arr3: Three sorted arrays
    Returns:
        List of elements common to all three arrays
    Example:
        Input: [1,2,3,4,5], [1,3,5,7,9], [1,3,5,8]
        Output: [1,3,5]
    """
    # Your code here
    pass

# Test cases
assert intersection_of_three([1,2,3,4,5], [1,3,5,7,9], [1,3,5,8]) == [1,3,5]
assert intersection_of_three([1,2,3], [4,5,6], [7,8,9]) == []
assert intersection_of_three([1,1,2], [1,1,2], [1,1,2]) == [1,1,2]
```

3. Sort an array of 0s, 1s, and 2s (Dutch National Flag):

```python
def sort_colors(nums):
    """
    Args:
        nums: Array containing only 0s, 1s, and 2s
    Returns:
        None (modify nums in-place)
    Example:
        Input: [2,0,2,1,1,0]
        After function call: [0,0,1,1,2,2]
    """
    # Your code here
    pass

# Test cases
nums1 = [2,0,2,1,1,0]
sort_colors(nums1)
assert nums1 == [0,0,1,1,2,2]

nums2 = [2,2,1,1,0,0]
sort_colors(nums2)
assert nums2 == [0,0,1,1,2,2]

nums3 = [0]
sort_colors(nums3)
assert nums3 == [0]
``` 