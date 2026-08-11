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

# Basic Array Partitioning

Partitioning moves all elements less than a pivot to the left side of the array.

```python
def partition(nums, pivot):
    # left points to where next small element goes
    left = 0
    
    for i in range(len(nums)):
        if nums[i] < pivot:
            # Swap current element to left side
            nums[left], nums[i] = nums[i], nums[left]
            left += 1
            
    return left  # Number of elements less than pivot
```

> 💡 The left pointer tracks where the next small element should go.

---
# Practice

Complete the function to partition evens and odds:

```python
def partition_evens(arr):
    left = ???
    
    for i in range(len(arr)):
        if arr[i] % 2 == ???:
            arr[left], arr[i] = ???, ???
            ???
```

- `0`
- `0`
- `arr[i]`
- `arr[left]`
- `left += 1`

---
# Revision

In basic partitioning, we:

???

- Move smaller elements to the left
- Sort the entire array
- Move larger elements to the left
- Remove the pivot element 