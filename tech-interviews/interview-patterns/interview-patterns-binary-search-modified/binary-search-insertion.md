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

# Finding Insertion Points

Modified binary search can find where to insert an element to maintain sorted order.

```python
def search_insert(nums, target):
    """Find index where target should be inserted"""
    left = 0
    right = len(nums)
    
    while left < right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
        elif nums[mid] < target:
            left = mid + 1
        else:
            right = mid
            
    return left  # This is the insertion point
```

> 💡 When element isn't found, left pointer shows where it should be inserted.

---
# Practice

Complete the function to find insertion point:

```python
def find_insert_position(arr, target):
    left = ???
    right = ???
    
    while left < right:
        mid = (left + right) // ???
        if arr[mid] == target:
            return ???
        elif arr[mid] < target:
            left = ???
        else:
            right = ???
```

- `0`
- `len(arr)`
- `2`
- `mid`
- `mid + 1`
- `mid`

---
# Revision

For finding insertion points, we:

???

- Return left pointer after loop ends
- Return -1 if not found
- Return right pointer after loop ends
- Return mid if not found 