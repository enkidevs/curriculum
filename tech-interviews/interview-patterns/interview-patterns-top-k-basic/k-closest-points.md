---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# K Closest Points

Using max heap to find K closest points to origin.

```python
import heapq

def k_closest_points(points, k):
    """Find K points closest to origin"""
    # Max heap storing (-distance, point)
    heap = []
    
    for x, y in points:
        # Calculate distance from origin
        dist = -(x*x + y*y)
        
        if len(heap) < k:
            # Add to heap while size < k
            heapq.heappush(heap, (dist, [x, y]))
        elif dist > heap[0][0]:
            # If closer than furthest point in heap,
            # remove furthest and add current
            heapq.heapreplace(heap, (dist, [x, y]))
            
    # Extract points from heap
    return [point for (dist, point) in heap]
```

> 💡 Store negative distances to turn min heap into max heap.

---
# Practice

Complete the function to find K closest points:

```python
def k_closest(points, k):
    heap = []
    
    for x, y in ???:
        dist = ???(x*x + y*y)
        
        if len(heap) < ???:
            heapq.???(heap, (dist, [x,y]))
        elif dist > heap[???][0]:
            heapq.???(heap, (dist, [x,y]))
```

- `points`
- `-`
- `k`
- `heappush`
- `0`
- `heapreplace`

---
# Revision

For K closest points:

???

- Use max heap with negative distances
- Use min heap with positive distances
- Sort by distance first
- Use array of size K 