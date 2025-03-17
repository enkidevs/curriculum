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

# K-way Merge Pattern

The k-way merge pattern efficiently combines multiple sorted arrays using a min heap.

```python
import heapq

def merge_k_sorted_arrays(arrays):
    """Merge K sorted arrays into one sorted array"""
    result = []
    
    # Create min heap of (value, array_index, element_index)
    heap = []
    
    # Add first element from each array
    for i, arr in enumerate(arrays):
        if arr:  # if array is not empty
            heapq.heappush(heap, (arr[0], i, 0))
            
    # Keep pulling smallest element and adding next from same array
    while heap:
        val, arr_idx, elem_idx = heapq.heappop(heap)
        result.append(val)
        
        # If there are more elements in this array, add next one
        if elem_idx + 1 < len(arrays[arr_idx]):
            next_elem = arrays[arr_idx][elem_idx + 1]
            heapq.heappush(heap, (next_elem, arr_idx, elem_idx + 1))
            
    return result
```

> 💡 Use min heap to always get smallest element among current candidates.

---
# Practice

Complete the function to merge K sorted arrays:

```python
def merge_k_arrays(arrays):
    result = []
    heap = []
    
    for i, arr in ???(arrays):
        if ???:
            heapq.???(heap, (arr[0], i, 0))
            
    while heap:
        val, arr_idx, elem_idx = heapq.???(heap)
        result.???(val)
        
        if elem_idx + 1 < len(arrays[???]):
            next_elem = arrays[arr_idx][???]
            heapq.???(heap, (next_elem, arr_idx, elem_idx + 1))
```

- `enumerate`
- `arr`
- `heappush`
- `heappop`
- `append`
- `arr_idx`
- `elem_idx + 1`
- `heappush`

---
# Revision

K-way merge uses a ??? heap to track ??? element from each array.

- min
- smallest
- max
- largest 