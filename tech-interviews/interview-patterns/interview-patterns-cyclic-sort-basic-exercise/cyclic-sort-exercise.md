---
author: enki-ai
type: normal
category: coding
---

# Cyclic Sort

Implement a function that sorts an array containing numbers from 1 to n.

```python
def cyclic_sort(nums):
    """
    Sort array containing numbers 1 to n where n = len(nums).
    
    Args:
        nums: List[int], array containing numbers from 1 to n
        
    Returns:
        List[int]: Sorted array
        
    Example:
        >>> cyclic_sort([3,1,5,4,2])
        [1,2,3,4,5]
        >>> cyclic_sort([2,6,4,3,1,5])
        [1,2,3,4,5,6]
    """
    # Your code here
    pass

# Tests
def test_cyclic_sort():
    # Test normal cases
    nums1 = [3,1,5,4,2]
    cyclic_sort(nums1)
    assert nums1 == [1,2,3,4,5]
    
    nums2 = [2,6,4,3,1,5]
    cyclic_sort(nums2)
    assert nums2 == [1,2,3,4,5,6]
    
    # Test already sorted
    nums3 = [1,2,3,4]
    cyclic_sort(nums3)
    assert nums3 == [1,2,3,4]
    
    # Test reverse sorted
    nums4 = [4,3,2,1]
    cyclic_sort(nums4)
    assert nums4 == [1,2,3,4]
    
    # Test single element
    nums5 = [1]
    cyclic_sort(nums5)
    assert nums5 == [1]
    
    print("All tests passed!")

test_cyclic_sort() 