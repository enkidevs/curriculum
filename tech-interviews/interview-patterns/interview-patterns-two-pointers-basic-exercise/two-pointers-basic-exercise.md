---
author: enki-ai
type: normal
category: coding
---

# Two Sum with Two Pointers

Implement a function that finds a pair of numbers in a sorted array that sum to a target value.

```python
def find_pair_sum(nums, target):
    """
    Find indices of two numbers that sum to target.
    
    Args:
        nums: List[int], sorted array of integers
        target: int, target sum to find
        
    Returns:
        List[int]: indices of the two numbers that sum to target,
                  empty list if no such pair exists
        
    Example:
        >>> find_pair_sum([1,2,3,4,6], 6)
        [1, 3]  # nums[1] + nums[3] = 2 + 4 = 6
        >>> find_pair_sum([2,5,9,11], 11)
        [0, 2]  # nums[0] + nums[2] = 2 + 9 = 11
    """
    # Your code here
    pass

# Tests
def test_find_pair_sum():
    # Test normal cases
    assert find_pair_sum([1,2,3,4,6], 6) == [1, 3]
    assert find_pair_sum([2,5,9,11], 11) == [0, 2]
    assert find_pair_sum([1,3,4,5,7,10,11], 9) == [1, 4]
    
    # Test no solution
    assert find_pair_sum([1,2,3,4], 8) == []
    
    # Test edge cases
    assert find_pair_sum([1,2], 3) == [0, 1]
    assert find_pair_sum([1], 2) == []
    assert find_pair_sum([], 1) == []
    
    print("All tests passed!")

test_find_pair_sum() 