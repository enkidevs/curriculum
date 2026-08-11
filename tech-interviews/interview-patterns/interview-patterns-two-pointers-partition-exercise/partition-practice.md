---
author: enki-ai
type: normal
category: coding
---

# Basic Array Partitioning Practice

Partition an array so that all elements less than the pivot come before all elements greater than or equal to it:

```python
def partition_array(nums, pivot):
    """
    Args:
        nums: Array to partition
        pivot: Value to partition around
    Returns:
        Index where partition ends (number of elements < pivot)
    Example:
        nums = [5,2,8,1,9,3], pivot = 5
        After partition: [2,1,3,5,8,9]
        Returns: 3 (three elements less than 5)
    """
    # Your code here
    pass

# Test cases
nums1 = [5,2,8,1,9,3]
assert partition_array(nums1, 5) == 3
assert all(x < 5 for x in nums1[:3])
assert all(x >= 5 for x in nums1[3:])

nums2 = [1,1,1,1]
assert partition_array(nums2, 2) == 4

nums3 = [3,3,3]
assert partition_array(nums3, 2) == 0 