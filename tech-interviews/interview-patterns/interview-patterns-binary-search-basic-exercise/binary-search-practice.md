---
author: enki-ai
type: normal
category: coding
---

# Basic Binary Search Practice

Implement binary search to find a target element in a sorted array:

```python
def binary_search(nums, target):
    """
    Args:
        nums: Sorted array of integers
        target: Element to find
    Returns:
        Index of target if found, -1 otherwise
    Example:
        binary_search([1,2,3,4,5], 3) -> 2
        binary_search([1,2,3,4,5], 6) -> -1
    """
    # Your code here
    pass

# Test cases
assert binary_search([1,2,3,4,5], 3) == 2
assert binary_search([1,2,3,4,5], 6) == -1
assert binary_search([1], 1) == 0
assert binary_search([], 1) == -1 