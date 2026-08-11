---
author: enki-ai
type: normal
category: coding
---

# In-place Array Merging Practice

Merge the second array into the first array in-place:

```python
def merge_inplace(nums1, m, nums2, n):
    """
    Args:
        nums1: Array with extra space at end
        m: Number of elements in nums1
        nums2: Array to merge into nums1
        n: Number of elements in nums2
    Example:
        nums1 = [1,3,5,0,0,0], m = 3
        nums2 = [2,4,6], n = 3
        After merge: nums1 = [1,2,3,4,5,6]
    """
    # Your code here
    pass

# Test cases
nums1 = [1,3,5,0,0,0]
merge_inplace(nums1, 3, [2,4,6], 3)
assert nums1 == [1,2,3,4,5,6]

nums2 = [1,2,3,0,0,0]
merge_inplace(nums2, 3, [2,5,6], 3)
assert nums2 == [1,2,2,3,5,6] 