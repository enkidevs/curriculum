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

# Variable-size Sliding Window

A variable-size window can grow or shrink based on a condition.

```python
def min_subarray_sum(nums, target):
    """Find length of smallest subarray with sum ≥ target"""
    window_sum = 0
    min_length = float('inf')
    start = 0
    
    for end in range(len(nums)):
        window_sum += nums[end]
        
        # Shrink window while sum is big enough
        while window_sum >= target:
            min_length = min(min_length, end - start + 1)
            window_sum -= nums[start]
            start += 1
            
    return min_length if min_length != float('inf') else 0
```

> 💡 Grow window until condition is met, then shrink it while condition holds.

---
# Practice

Complete the function to find longest subarray with sum ≤ target:

```python
def longest_subarray(arr, target):
    curr_sum = ???
    max_len = ???
    start = ???
    
    for end in range(len(arr)):
        curr_sum += ???
        
        while curr_sum > target:
            curr_sum -= ???
            ???
            
        max_len = max(max_len, ???)
```

- `0`
- `0`
- `0`
- `arr[end]`
- `arr[start]`
- `start += 1`
- `end - start + 1`

---
# Revision

In variable-size sliding window, we:

???

- Grow and shrink based on condition
- Keep window size fixed
- Only grow window
- Only shrink window 