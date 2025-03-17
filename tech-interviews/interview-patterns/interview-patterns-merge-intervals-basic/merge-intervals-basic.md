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

# Merge Intervals

The merge intervals pattern deals with overlapping intervals.

```python
def merge_intervals(intervals):
    """Merge overlapping intervals"""
    if not intervals:
        return []
        
    # Sort by start time
    intervals.sort(key=lambda x: x[0])
    
    merged = [intervals[0]]
    
    for interval in intervals[1:]:
        last_end = merged[-1][1]
        curr_start = interval[0]
        curr_end = interval[1]
        
        if curr_start <= last_end:
            # Overlapping - merge them
            merged[-1][1] = max(last_end, curr_end)
        else:
            # Non-overlapping - add new interval
            merged.append(interval)
            
    return merged
```

> 💡 Sort intervals by start time, then merge overlapping ones in a single pass.

---
# Practice

Complete the function to merge intervals:

```python
def merge(intervals):
    if not intervals:
        return ???
        
    intervals.sort(key=lambda x: ???)
    merged = [intervals[???]]
    
    for interval in intervals[1:]:
        if interval[0] <= merged[-1][???]:
            merged[-1][1] = max(merged[-1][1], ???)
        else:
            merged.append(???)
```

- `[]`
- `x[0]`
- `0`
- `1`
- `interval[1]`
- `interval`

---
# Revision

When merging intervals, we first:

???

- Sort by start time
- Sort by end time
- Check for overlap
- Merge all intervals 