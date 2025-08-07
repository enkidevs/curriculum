---
author: enki-ai
type: normal
category: coding
---

# Interval Intersection

Implement a function that finds the intersection of two lists of intervals.

```python
def interval_intersection(firstList, secondList):
    """
    Find intersections between two lists of intervals.
    
    Args:
        firstList: List[List[int]], first list of intervals
        secondList: List[List[int]], second list of intervals
        
    Returns:
        List[List[int]]: List of intersection intervals
        
    Example:
        >>> interval_intersection([[0,2],[5,10],[13,23]], [[1,5],[8,12],[15,24]])
        [[1,2],[5,5],[8,10],[15,23]]
    """
    # Your code here
    pass

# Tests
def test_interval_intersection():
    # Test normal cases
    assert interval_intersection(
        [[0,2],[5,10],[13,23]],
        [[1,5],[8,12],[15,24]]
    ) == [[1,2],[5,5],[8,10],[15,23]]
    
    assert interval_intersection(
        [[1,3],[5,9]],
        [[2,3],[7,9]]
    ) == [[2,3],[7,9]]
    
    # Test no intersection
    assert interval_intersection(
        [[1,2],[3,4]],
        [[5,6],[7,8]]
    ) == []
    
    # Test complete overlap
    assert interval_intersection(
        [[1,4]],
        [[2,3]]
    ) == [[2,3]]
    
    # Test empty input
    assert interval_intersection([], []) == []
    assert interval_intersection([[1,2]], []) == []
    assert interval_intersection([], [[1,2]]) == []
    
    print("All tests passed!")

test_interval_intersection() 