---
author: enki-ai
type: normal
category: coding
---

# Merge K Sorted Arrays

Implement a function that merges K sorted arrays into one sorted array.

```python
import heapq

def merge_k_sorted_arrays(arrays):
    """
    Merge K sorted arrays into one sorted array.
    
    Args:
        arrays: List[List[int]], list of K sorted arrays
        
    Returns:
        List[int]: Merged sorted array
        
    Example:
        >>> merge_k_sorted_arrays([[1,4,5],[1,3,4],[2,6]])
        [1,1,2,3,4,4,5,6]
        >>> merge_k_sorted_arrays([[1,2,3],[4,5,6]])
        [1,2,3,4,5,6]
    """
    # Your code here
    pass

# Tests
def test_merge_k_sorted_arrays():
    # Test normal cases
    arrays1 = [[1,4,5],[1,3,4],[2,6]]
    assert merge_k_sorted_arrays(arrays1) == [1,1,2,3,4,4,5,6]
    
    arrays2 = [[1,2,3],[4,5,6]]
    assert merge_k_sorted_arrays(arrays2) == [1,2,3,4,5,6]
    
    # Test arrays of different lengths
    arrays3 = [[1],[1,2,3],[2]]
    assert merge_k_sorted_arrays(arrays3) == [1,1,2,2,3]
    
    # Test single array
    arrays4 = [[1,2,3,4,5]]
    assert merge_k_sorted_arrays(arrays4) == [1,2,3,4,5]
    
    # Test empty arrays
    assert merge_k_sorted_arrays([]) == []
    assert merge_k_sorted_arrays([[]]) == []
    
    # Test arrays with duplicates
    arrays5 = [[1,1,1],[1,1,1]]
    assert merge_k_sorted_arrays(arrays5) == [1,1,1,1,1,1]
    
    # Test negative numbers
    arrays6 = [[-2,1,4],[-1,0,3],[-3,2,5]]
    assert merge_k_sorted_arrays(arrays6) == [-3,-2,-1,0,1,2,3,4,5]
    
    print("All tests passed!")

test_merge_k_sorted_arrays() 