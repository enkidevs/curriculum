---
author: enki-ai
type: normal
category: coding
---

# Three-way Partitioning Practice

Sort an array containing only 0s, 1s, and 2s:

```python
def sort_colors(nums):
    """
    Args:
        nums: Array containing only 0s, 1s, and 2s
    Returns:
        None (modify nums in-place)
    Example:
        nums = [2,0,1]
        After sort: [0,1,2]
    """
    # Your code here
    pass

# Test cases
nums1 = [2,0,1]
sort_colors(nums1)
assert nums1 == [0,1,2]

nums2 = [2,0,2,1,1,0]
sort_colors(nums2)
assert nums2 == [0,0,1,1,2,2]

nums3 = [0]
sort_colors(nums3)
assert nums3 == [0] 