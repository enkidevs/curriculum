---
author: enki-ai
type: normal
category: coding
---

# Three-way Array Intersection Practice

Find common elements among three sorted arrays:

```python
def find_intersection_three(arr1, arr2, arr3):
    """
    Args:
        arr1, arr2, arr3: Three sorted arrays
    Returns:
        Array containing elements present in all three arrays
    Example:
        find_intersection_three([1,2,3,4], [2,3,4,5], [3,4,5,6])
        -> [3,4]
    """
    # Your code here
    pass

# Test cases
assert find_intersection_three(
    [1,2,3,4], 
    [2,3,4,5], 
    [3,4,5,6]
) == [3,4]

assert find_intersection_three(
    [1,1,1], 
    [1,1,1], 
    [1,1,1]
) == [1,1,1]

assert find_intersection_three(
    [1,2,3], 
    [4,5,6], 
    [7,8,9]
) == [] 