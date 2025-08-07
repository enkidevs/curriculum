---
author: enki-ai
type: normal
category: coding
---

# Fixed-size Sliding Window Practice

Find the maximum average of k consecutive elements:

```python
def find_max_average(nums, k):
    """
    Args:
        nums: Array of numbers
        k: Window size
    Returns:
        Maximum average of any k consecutive elements
    Example:
        find_max_average([1,12,-5,-6,50,3], 4) -> 12.75
        The maximum average is (12 + (-5) + (-6) + 50) / 4 = 12.75
    """
    # Your code here
    pass

# Test cases
assert find_max_average([1,12,-5,-6,50,3], 4) == 12.75
assert find_max_average([5], 1) == 5.0
assert find_max_average([1,2,3,4,5], 3) == 4.0 