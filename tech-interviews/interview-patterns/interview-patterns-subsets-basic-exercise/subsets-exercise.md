---
author: enki-ai
type: normal
category: coding
---

# Generate Subsets

Implement a function that generates all possible subsets of a set of distinct integers.

```python
def subsets(nums):
    """
    Generate all possible subsets of a set.
    
    Args:
        nums: List[int], set of distinct integers
        
    Returns:
        List[List[int]]: List of all possible subsets
        
    Example:
        >>> subsets([1,2,3])
        [[], [1], [2], [1,2], [3], [1,3], [2,3], [1,2,3]]
        >>> subsets([1,2])
        [[], [1], [2], [1,2]]
    """
    # Your code here
    pass

# Tests
def test_subsets():
    # Test normal cases
    result1 = subsets([1,2,3])
    expected1 = [[], [1], [2], [1,2], [3], [1,3], [2,3], [1,2,3]]
    assert sorted(map(sorted, result1)) == sorted(map(sorted, expected1))
    
    result2 = subsets([1,2])
    expected2 = [[], [1], [2], [1,2]]
    assert sorted(map(sorted, result2)) == sorted(map(sorted, expected2))
    
    # Test single element
    assert sorted(map(sorted, subsets([1]))) == sorted(map(sorted, [[], [1]]))
    
    # Test empty set
    assert subsets([]) == [[]]
    
    # Test larger set
    result3 = subsets([1,2,3,4])
    assert len(result3) == 16  # 2^4 subsets
    
    print("All tests passed!")

test_subsets() 