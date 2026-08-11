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

# Basic Binary Search

Binary search finds an element in a sorted array by repeatedly dividing the search space in half.

```python
def binary_search(nums, target):
    left = 0
    right = len(nums) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
        elif nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
            
    return -1  # Not found
```

> 💡 The array must be sorted for binary search to work correctly.

---
# Practice

Complete the binary search function:

```python
def binary_search(arr, target):
    left = ???
    right = ???
    
    while left <= right:
        mid = (left + right) // ???
        
        if arr[mid] == ???:
            return ???
        elif arr[mid] < target:
            left = ???
        else:
            right = ???
```

- `0`
- `len(arr) - 1`
- `2`
- `target`
- `mid`
- `mid + 1`
- `mid - 1`

---
# Revision

Binary search has a time complexity of:

???

- O(log n)
- O(n)
- O(n log n)
- O(1) 