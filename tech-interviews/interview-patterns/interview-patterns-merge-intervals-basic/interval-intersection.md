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

# Interval Intersection

Finding intersections between two lists of intervals.

```python
def interval_intersection(A, B):
    """Find intersections between two lists of intervals"""
    result = []
    i = j = 0
    
    while i < len(A) and j < len(B):
        # Find overlap
        start = max(A[i][0], B[j][0])
        end = min(A[i][1], B[j][1])
        
        if start <= end:
            # Valid intersection
            result.append([start, end])
            
        # Move pointer of interval that ends first
        if A[i][1] < B[j][1]:
            i += 1
        else:
            j += 1
            
    return result
```

> 💡 Compare current intervals from both lists and take overlapping portion.

---
# Practice

Complete the function to find interval intersections:

```python
def find_intersections(A, B):
    result = []
    i = j = ???
    
    while i < len(A) and j < len(B):
        start = ???(A[i][0], B[j][0])
        end = ???(A[i][1], B[j][1])
        
        if start <= end:
            result.append([???, ???])
            
        if A[i][1] < B[j][1]:
            ??? += 1
        else:
            ??? += 1
```

- `0`
- `max`
- `min`
- `start`
- `end`
- `i`
- `j`

---
# Revision

For interval intersection, we need:

???

- Maximum of starts and minimum of ends
- Minimum of starts and maximum of ends
- Maximum of both starts and ends
- Minimum of both starts and ends 