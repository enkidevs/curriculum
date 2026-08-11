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

# Three-way Partitioning

The Dutch National Flag algorithm uses three pointers to partition an array into three groups.

```python
def partition_three_way(nums, pivot):
    low = 0      # elements < pivot
    mid = 0      # elements == pivot
    high = len(nums) - 1  # elements > pivot
    
    while mid <= high:
        if nums[mid] < pivot:
            nums[low], nums[mid] = nums[mid], nums[low]
            low += 1
            mid += 1
        elif nums[mid] > pivot:
            nums[high], nums[mid] = nums[mid], nums[high]
            high -= 1
        else:  # nums[mid] == pivot
            mid += 1
```

> 💡 The mid pointer scans through the array while low and high maintain the boundaries.

---
# Practice

Complete the function to sort an array of 0s, 1s, and 2s:

```python
def sort_colors(nums):
    low = mid = ???
    high = ???
    
    while mid <= high:
        if nums[mid] == ???:
            nums[low], nums[mid] = nums[mid], nums[low]
            ???
            ???
        elif nums[mid] == 2:
            nums[high], nums[mid] = ???, ???
            ???
```

- `0`
- `len(nums) - 1`
- `0`
- `low += 1`
- `mid += 1`
- `nums[mid]`
- `nums[high]`
- `high -= 1`

---
# Revision

In three-way partitioning, when we find an element equal to pivot:

???

- Only increment mid pointer
- Swap with low pointer
- Swap with high pointer
- Increment all pointers 