---
author: enki-ai
type: normal
category: coding
---

# Search in Rotated Array

Implement a function that searches for a target value in a sorted array that has been rotated at some pivot point.

```python
def search_rotated(nums, target):
    """
    Search for target in a rotated sorted array.
    
    Args:
        nums: List[int], sorted array rotated at some pivot
        target: int, value to find
        
    Returns:
        int: index of target if found, -1 otherwise
        
    Example:
        >>> search_rotated([4,5,6,7,0,1,2], 0)
        4
        >>> search_rotated([4,5,6,7,0,1,2], 3)
        -1
    """
    if not nums:
        return -1
        
    left = 0
    right = len(nums) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
            
        # Check which half is sorted
        if nums[left] <= nums[mid]:
            # Left half is sorted
            if nums[left] <= target < nums[mid]:
                right = mid - 1
            else:
                left = mid + 1
        else:
            # Right half is sorted
            if nums[mid] < target <= nums[right]:
                left = mid + 1
            else:
                right = mid - 1
                
    return -1

# Tests
def test_search_rotated():
    # Test empty array
    assert search_rotated([], 5) == -1
    
    # Test array with one element
    assert search_rotated([1], 1) == 0
    assert search_rotated([1], 2) == -1
    
    # Test normal cases
    assert search_rotated([4,5,6,7,0,1,2], 0) == 4
    assert search_rotated([4,5,6,7,0,1,2], 3) == -1
    assert search_rotated([1,3], 3) == 1
    
    # Test edge cases
    assert search_rotated([3,1], 1) == 1
    assert search_rotated([5,1,3], 3) == 2
    
    print("All tests passed!")

test_search_rotated() 