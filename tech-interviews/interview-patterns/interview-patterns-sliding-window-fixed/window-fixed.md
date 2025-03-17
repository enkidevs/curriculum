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

# Fixed-size Sliding Window

A fixed-size sliding window moves over an array, maintaining a window of constant size.

```python
def max_average(nums, k):
    """Find max average of k consecutive elements"""
    # Calculate sum of first window
    window_sum = sum(nums[:k])
    max_sum = window_sum
    
    # Slide window by one position at a time
    for i in range(k, len(nums)):
        # Add new element, remove first element
        window_sum = window_sum + nums[i] - nums[i - k]
        max_sum = max(max_sum, window_sum)
        
    return max_sum / k
```

> 💡 Instead of recalculating the sum each time, we add the new element and remove the first element.

---
# Practice

Complete the function to find max sum of k consecutive elements:

```python
def max_sum_k(arr, k):
    curr_sum = sum(arr[???])
    max_sum = ???
    
    for i in range(k, len(arr)):
        curr_sum = curr_sum + ??? - ???
        max_sum = max(???, ???)
```

- `:k`
- `curr_sum`
- `arr[i]`
- `arr[i - k]`
- `max_sum`
- `curr_sum`

---
# Revision

In a fixed-size sliding window, we:

???

- Add new element and remove first element
- Recalculate entire window sum each time
- Change window size as we slide
- Only add new elements 