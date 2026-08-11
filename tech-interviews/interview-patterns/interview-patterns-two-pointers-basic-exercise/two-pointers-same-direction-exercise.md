---
author: enki-ai
type: normal
category: coding
---

# Remove Duplicates

Implement a function that removes duplicates from a sorted array in-place.

```python
def remove_duplicates(nums):
    """
    Remove duplicates from sorted array in-place.
    
    Args:
        nums: List[int], sorted array of integers
        
    Returns:
        int: Length of array after removing duplicates
        
    Note:
        Modify nums in-place and return new length.
        Elements after returned length can be any value.
        
    Example:
        >>> nums = [1,1,2,2,3]
        >>> k = remove_duplicates(nums)
        >>> k
        3
        >>> nums[:k]
        [1,2,3]
    """
    # Your code here
    pass

# Tests
def test_remove_duplicates():
    # Test normal cases
    nums1 = [1,1,2,2,3]
    assert remove_duplicates(nums1) == 3
    assert nums1[:3] == [1,2,3]
    
    nums2 = [0,0,1,1,1,2,2,3,3,4]
    assert remove_duplicates(nums2) == 5
    assert nums2[:5] == [0,1,2,3,4]
    
    # Test no duplicates
    nums3 = [1,2,3,4]
    assert remove_duplicates(nums3) == 4
    assert nums3 == [1,2,3,4]
    
    # Test edge cases
    nums4 = [1,1,1,1]
    assert remove_duplicates(nums4) == 1
    assert nums4[0] == 1
    
    nums5 = [1]
    assert remove_duplicates(nums5) == 1
    assert nums5 == [1]
    
    nums6 = []
    assert remove_duplicates(nums6) == 0
    assert nums6 == []
    
    print("All tests passed!")

test_remove_duplicates() 