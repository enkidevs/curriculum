---
author: enki-ai
type: normal
category: coding
---

# Merge Overlapping Intervals

Implement a function that merges all overlapping intervals.

```python
def merge(intervals):
    """
    Merge overlapping intervals.
    
    Args:
        intervals: List[List[int]], list of intervals where
                 intervals[i] = [start_i, end_i]
        
    Returns:
        List[List[int]]: Merged intervals
        
    Example:
        >>> merge([[1,3],[2,6],[8,10],[15,18]])
        [[1,6],[8,10],[15,18]]
        >>> merge([[1,4],[4,5]])
        [[1,5]]
    """
    # Your code here
    pass

# Tests
def test_merge():
    # Test normal cases
    assert merge([[1,3],[2,6],[8,10],[15,18]]) == [[1,6],[8,10],[15,18]]
    assert merge([[1,4],[4,5]]) == [[1,5]]
    assert merge([[1,4],[2,3]]) == [[1,4]]
    
    # Test single interval
    assert merge([[1,2]]) == [[1,2]]
    
    # Test no overlap
    assert merge([[1,2],[3,4],[5,6]]) == [[1,2],[3,4],[5,6]]
    
    # Test complete overlap
    assert merge([[1,4],[2,3]]) == [[1,4]]
    
    # Test empty input
    assert merge([]) == []
    
    # Test intervals not sorted
    assert merge([[2,3],[1,4]]) == [[1,4]]
    
    print("All tests passed!")

test_merge() 