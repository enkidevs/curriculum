---
author: enki-ai
type: normal
category: coding
---

# Variable-size Sliding Window Practice

Find the minimum length subarray with sum greater than or equal to target:

```python
def min_subarray_length(nums, target):
    """
    Args:
        nums: Array of positive numbers
        target: Target sum
    Returns:
        Length of smallest subarray with sum ≥ target
        Return 0 if no such subarray exists
    Example:
        min_subarray_length([2,3,1,2,4,3], 7) -> 2
        The subarray [4,3] has sum 7 and length 2
    """
    # Your code here
    pass

# Test cases
assert min_subarray_length([2,3,1,2,4,3], 7) == 2
assert min_subarray_length([1,4,4], 4) == 1
assert min_subarray_length([1,1,1,1,1,1,1], 11) == 0 