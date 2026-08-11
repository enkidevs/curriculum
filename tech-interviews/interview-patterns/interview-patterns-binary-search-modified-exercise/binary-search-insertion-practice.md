---
author: enki-ai
type: normal
category: coding
---

# Finding Insertion Points Practice

Find the index where a target should be inserted in a sorted array:

```python
def search_insert(nums, target):
    """
    Args:
        nums: Sorted array of integers
        target: Number to insert
    Returns:
        Index where target should be inserted
    Example:
        search_insert([1,3,5,6], 5) -> 2
        search_insert([1,3,5,6], 2) -> 1
    """
    # Your code here
    pass

# Test cases
assert search_insert([1,3,5,6], 5) == 2
assert search_insert([1,3,5,6], 2) == 1
assert search_insert([1,3,5,6], 7) == 4
assert search_insert([1,3,5,6], 0) == 0 