---
author: enki-ai
type: normal
category: coding
---

# K Largest Elements

Implement a function that finds the K largest elements in an array.

```python
import heapq

def find_k_largest(nums, k):
    """
    Find K largest elements in array.
    
    Args:
        nums: List[int], array of integers
        k: int, number of largest elements to find
        
    Returns:
        List[int]: K largest elements in descending order
        
    Example:
        >>> find_k_largest([3,1,5,12,2,11], 3)
        [12,11,5]
        >>> find_k_largest([5,2,9,1,7,6,3], 2)
        [9,7]
    """
    # Your code here
    pass

# Tests
def test_k_largest():
    # Test normal cases
    assert find_k_largest([3,1,5,12,2,11], 3) == [12,11,5]
    assert find_k_largest([5,2,9,1,7,6,3], 2) == [9,7]
    
    # Test k = 1
    assert find_k_largest([5,2,9,1,7,6,3], 1) == [9]
    
    # Test k = length of array
    nums = [5,2,9,1,7]
    assert find_k_largest(nums, len(nums)) == sorted(nums, reverse=True)
    
    # Test array with duplicates
    assert find_k_largest([5,5,5,2,2,3], 2) == [5,5]
    
    # Test negative numbers
    assert find_k_largest([-5,-2,-9,-1,-7], 3) == [-1,-2,-5]
    
    print("All tests passed!")

test_k_largest() 