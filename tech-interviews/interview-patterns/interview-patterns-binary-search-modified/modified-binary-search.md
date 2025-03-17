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

# Modified Binary Search Pattern

Binary search can be adapted to solve various problems beyond simple sorted array search.

```python
def search_rotated(nums, target):
    """Search in rotated sorted array"""
    left, right = 0, len(nums) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
            
        # Left half is sorted
        if nums[left] <= nums[mid]:
            if nums[left] <= target < nums[mid]:
                right = mid - 1
            else:
                left = mid + 1
        # Right half is sorted
        else:
            if nums[mid] < target <= nums[right]:
                left = mid + 1
            else:
                right = mid - 1
                
    return -1
```

> 💡 Identify which half is sorted and use that information to decide search space.

---
# Practice

Complete the function to search in a rotated sorted array:

```python
def search(nums, target):
    left, right = ???, ???
    
    while left <= right:
        mid = (left + right) // ???
        
        if nums[mid] == ???:
            return mid
            
        if nums[left] <= nums[mid]:
            if nums[left] <= target < nums[???]:
                right = mid - 1
            else:
                left = mid + ???
        else:
            if nums[mid] < target <= nums[???]:
                left = mid + 1
            else:
                right = mid - ???
```

- `0`
- `len(nums) - 1`
- `2`
- `target`
- `mid`
- `1`
- `right`
- `1`

---
# Revision

Modified binary search is useful when:

???

- Array is sorted but modified (e.g. rotated)
- Array is completely unsorted
- Array has duplicates
- Array needs to be sorted first 