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

# Top K Elements Pattern

The top K elements pattern uses a heap to efficiently find or maintain K largest/smallest elements.

```python
import heapq

def find_k_largest(nums, k):
    """Find K largest elements in array"""
    # Create min heap of K elements
    heap = []
    
    for num in nums:
        if len(heap) < k:
            # Add to heap while size < k
            heapq.heappush(heap, num)
        elif num > heap[0]:
            # If current number larger than smallest in heap,
            # remove smallest and add current
            heapq.heapreplace(heap, num)
            
    # Return in descending order
    return sorted(heap, reverse=True)
```

> 💡 Use min heap for K largest and max heap for K smallest elements.

---
# Practice

Complete the function to find K largest elements:

```python
def k_largest(nums, k):
    heap = []
    
    for num in ???:
        if len(heap) < ???:
            heapq.???(heap, num)
        elif num > heap[???]:
            heapq.???(heap, num)
            
    return sorted(heap, ???=True)
```

- `nums`
- `k`
- `heappush`
- `0`
- `heapreplace`
- `reverse`

---
# Revision

For finding K largest elements:

???

- Use min heap of size K
- Use max heap of size K
- Sort array first
- Use array of size K 