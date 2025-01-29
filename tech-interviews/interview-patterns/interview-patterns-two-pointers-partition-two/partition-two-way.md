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

# Two-way Partitioning

Two-way partitioning divides an array into two groups using two pointers moving towards each other.

```python
def partition_evens_odds(nums):
    left = 0
    right = len(nums) - 1
    
    while left < right:
        # Find odd number from left
        while left < right and nums[left] % 2 == 0:
            left += 1
            
        # Find even number from right
        while left < right and nums[right] % 2 == 1:
            right -= 1
            
        # Swap them
        nums[left], nums[right] = nums[right], nums[left]
```

> 💡 Unlike basic partitioning, we work from both ends to minimize swaps.

---
# Practice

Complete the function to partition positive and negative numbers:

```python
def partition_signs(arr):
    left = ???
    right = ???
    
    while left < right:
        while left < right and arr[left] < ???:
            ???
        while left < right and arr[right] >= ???:
            ???
        arr[left], arr[right] = ???, ???
```

- `0`
- `len(arr) - 1`
- `0`
- `left += 1`
- `0`
- `right -= 1`
- `arr[right]`
- `arr[left]`

---
# Revision

In two-way partitioning, we:

???

- Move pointers from both ends
- Only move from left to right
- Sort each partition separately
- Always swap adjacent elements 