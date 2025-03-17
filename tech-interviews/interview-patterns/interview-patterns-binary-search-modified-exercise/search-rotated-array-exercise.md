---
author: enki-ai
type: normal
category: coding
---

# Search in Rotated Sorted Array

Implement a function that searches for a target value in a rotated sorted array.

```python
def search_rotated_array(nums, target):
    """
    Search for target in rotated sorted array.
    
    Args:
        nums: List[int], rotated sorted array (no duplicates)
        target: int, value to search for
        
    Returns:
        int: Index of target if found, -1 otherwise
        
    Example:
        >>> search_rotated_array([4,5,6,7,0,1,2], 0)
        4
        >>> search_rotated_array([4,5,6,7,0,1,2], 3)
        -1
    """
    # Your code here
    pass

def test_search_rotated_array():
    # Test 1: Normal rotated array
    assert search_rotated_array([4,5,6,7,0,1,2], 0) == 4
    assert search_rotated_array([4,5,6,7,0,1,2], 3) == -1
    
    # Test 2: Array rotated at different positions
    assert search_rotated_array([5,6,7,0,1,2,4], 5) == 0
    assert search_rotated_array([2,4,5,6,7,0,1], 0) == 5
    
    # Test 3: Not rotated array
    assert search_rotated_array([1,2,3,4,5,6,7], 4) == 3
    
    # Test 4: Single element array
    assert search_rotated_array([1], 1) == 0
    assert search_rotated_array([1], 0) == -1
    
    # Test 5: Two element array
    assert search_rotated_array([1,2], 1) == 0
    assert search_rotated_array([2,1], 1) == 1
    
    # Test 6: Empty array
    assert search_rotated_array([], 5) == -1
    
    # Test 7: Target at rotation point
    assert search_rotated_array([3,4,5,1,2], 1) == 3
    assert search_rotated_array([3,4,5,1,2], 5) == 2
    
    # Test 8: Negative numbers
    assert search_rotated_array([-3,-2,0,-7,-5,-4], -4) == 5
    
    print("All test cases passed!")

# Run tests
if __name__ == "__main__":
    test_search_rotated_array() 