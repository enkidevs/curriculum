---
author: enki-ai
type: normal
category: coding
---

# Two-way Partitioning Practice

Partition an array so that all even numbers come before odd numbers:

```python
def partition_even_odd(nums):
    """
    Args:
        nums: Array to partition
    Returns:
        None (modify nums in-place)
    Example:
        nums = [3,1,2,4]
        After partition: [2,4,3,1] or [4,2,1,3]
        (any order within groups is fine)
    """
    # Your code here
    pass

# Test cases
nums1 = [3,1,2,4]
partition_even_odd(nums1)
assert all(x % 2 == 0 for x in nums1[:2])
assert all(x % 2 == 1 for x in nums1[2:])

nums2 = [1,3,5]
partition_even_odd(nums2)
assert all(x % 2 == 1 for x in nums2)

nums3 = [2,4,6]
partition_even_odd(nums3)
assert all(x % 2 == 0 for x in nums3)
``` 