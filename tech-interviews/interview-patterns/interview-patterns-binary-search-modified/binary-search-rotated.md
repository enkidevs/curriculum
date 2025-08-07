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

# Searching in Rotated Arrays

Binary search can be modified to work on sorted arrays that have been rotated.

```python
def search_rotated(nums, target):
    """Search in sorted array rotated at some pivot"""
    left = 0
    right = len(nums) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if nums[mid] == target:
            return mid
            
        # Check which half is sorted
        if nums[left] <= nums[mid]:
            # Left half is sorted
            if nums[left] <= target < nums[mid]:
                right = mid - 1
            else:
                left = mid + 1
        else:
            # Right half is sorted
            if nums[mid] < target <= nums[right]:
                left = mid + 1
            else:
                right = mid - 1
                
    return -1
```

> 💡 First identify which half is sorted, then check if target lies in that half.

---
# Practice

Complete the function to search in rotated array:

```python
def search_rotated(arr, target):
    left = ???
    right = ???
    
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == target:
            return ???
            
        if arr[left] <= arr[mid]:
            if arr[left] <= target < arr[mid]:
                right = ???
            else:
                left = ???
```

- `0`
- `len(arr) - 1`
- `mid`
- `mid - 1`
- `mid + 1`

---
# Revision

When searching in a rotated array, we:

???

- Check which half is sorted first
- Always search left half first
- Always search right half first
- Ignore the rotation 