---
author: enki-ai
type: normal
category: coding
---

# K Closest Points

Implement a function that finds the K points closest to the origin.

```python
import heapq

def k_closest_points(points, k):
    """
    Find K points closest to origin (0,0).
    
    Args:
        points: List[List[int]], list of points [x,y]
        k: int, number of closest points to find
        
    Returns:
        List[List[int]]: K closest points to origin
        
    Example:
        >>> k_closest_points([[1,3],[-2,2]], 1)
        [[-2,2]]  # distance = sqrt(8)
        >>> k_closest_points([[3,3],[5,-1],[-2,4]], 2)
        [[-2,4],[3,3]]  # distances = sqrt(20), sqrt(18)
    """
    # Your code here
    pass

# Tests
def test_k_closest_points():
    # Test normal cases
    points1 = [[1,3],[-2,2]]
    assert k_closest_points(points1, 1) == [[-2,2]]
    
    points2 = [[3,3],[5,-1],[-2,4]]
    result2 = k_closest_points(points2, 2)
    assert sorted(result2) == sorted([[-2,4],[3,3]])
    
    # Test k = all points
    points3 = [[1,1],[-1,-1],[2,2]]
    result3 = k_closest_points(points3, 3)
    assert sorted(result3) == sorted([[1,1],[-1,-1],[2,2]])
    
    # Test points on same distance
    points4 = [[1,0],[0,1],[-1,0],[0,-1]]
    result4 = k_closest_points(points4, 2)
    assert len(result4) == 2
    for point in result4:
        assert point in points4
        
    # Test single point
    assert k_closest_points([[5,5]], 1) == [[5,5]]
    
    # Test origin point
    points5 = [[1,1],[0,0],[2,2]]
    assert k_closest_points(points5, 1) == [[0,0]]
    
    print("All tests passed!")

test_k_closest_points() 