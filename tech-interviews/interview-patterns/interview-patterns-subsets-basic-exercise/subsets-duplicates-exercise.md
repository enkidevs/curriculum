---
author: enki-ai
type: normal
category: coding
---

# Subsets with Duplicates

Implement a function that generates all possible subsets of a set that may contain duplicates.

```python
def subsets_with_duplicates(nums):
    """
    Generate all possible subsets of a set with duplicates.
    
    Args:
        nums: List[int], set of integers (may contain duplicates)
        
    Returns:
        List[List[int]]: List of all possible unique subsets
        
    Example:
        >>> subsets_with_duplicates([1,2,2])
        [[], [1], [2], [1,2], [2,2], [1,2,2]]
        >>> subsets_with_duplicates([1,1])
        [[], [1], [1,1]]
    """
    # Your code here
    pass

# Tests
def test_subsets_with_duplicates():
    # Test normal cases
    result1 = subsets_with_duplicates([1,2,2])
    expected1 = [[], [1], [2], [1,2], [2,2], [1,2,2]]
    assert sorted(map(sorted, result1)) == sorted(map(sorted, expected1))
    
    result2 = subsets_with_duplicates([1,1])
    expected2 = [[], [1], [1,1]]
    assert sorted(map(sorted, result2)) == sorted(map(sorted, expected2))
    
    # Test no duplicates
    result3 = subsets_with_duplicates([1,2,3])
    expected3 = [[], [1], [2], [3], [1,2], [1,3], [2,3], [1,2,3]]
    assert sorted(map(sorted, result3)) == sorted(map(sorted, expected3))
    
    # Test single element
    assert sorted(map(sorted, subsets_with_duplicates([1]))) == sorted(map(sorted, [[], [1]]))
    
    # Test empty set
    assert subsets_with_duplicates([]) == [[]]
    
    # Test multiple duplicates
    result4 = subsets_with_duplicates([1,1,1])
    expected4 = [[], [1], [1,1], [1,1,1]]
    assert sorted(map(sorted, result4)) == sorted(map(sorted, expected4))
    
    print("All tests passed!")

test_subsets_with_duplicates() 