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

# Three-Way Partitioning

The Dutch National Flag problem is a classic example of using multiple pointers to partition an array into three sections.

```python
def dutch_flag_partition(arr, pivot):
    """
    Partition array into three parts:
    - Elements less than pivot
    - Elements equal to pivot
    - Elements greater than pivot
    """
    low = 0  # Elements < pivot go here
    mid = 0  # Current element being examined
    high = len(arr) - 1  # Elements > pivot go here
    
    while mid <= high:
        if arr[mid] < pivot:
            arr[low], arr[mid] = arr[mid], arr[low]
            low += 1
            mid += 1
        elif arr[mid] > pivot:
            arr[high], arr[mid] = arr[mid], arr[high]
            high -= 1
        else:  # arr[mid] == pivot
            mid += 1
```

> 💡 This pattern can be extended to k-way partitioning by using k-1 pointers.

Applications:
- Sort array of 0s, 1s, and 2s
- Partition around range
- Group elements by multiple conditions
- Quick sort variations

Key insights:
- Maintain invariants for each section
- Handle elements equal to pivot efficiently
- Consider stability requirements
- Be careful with pointer movements

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
        elif nums[mid] == 1:
            ???
        else:  # nums[mid] == 2
            nums[high], nums[mid] = nums[mid], nums[high]
            ???
```

- `0`
- `len(nums) - 1`
- `0`
- `low += 1`
- `mid += 1`
- `mid += 1`
- `high -= 1`

---
# Revision

In the Dutch National Flag algorithm, when we find an element equal to the pivot:

???

- Only increment the middle pointer
- Swap with low pointer
- Swap with high pointer
- Increment all pointers 