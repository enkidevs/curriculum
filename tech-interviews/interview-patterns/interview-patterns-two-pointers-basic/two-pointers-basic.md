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

# Basic Two Pointers

The two pointers pattern uses two pointers to solve array problems in a single pass.

```python
def pair_with_sum(nums, target):
    """Find pair of numbers that sum to target"""
    left = 0
    right = len(nums) - 1
    
    while left < right:
        current_sum = nums[left] + nums[right]
        
        if current_sum == target:
            return [left, right]
        elif current_sum < target:
            left += 1  # Need larger sum
        else:
            right -= 1  # Need smaller sum
            
    return []  # No pair found
```

> 💡 Two pointers moving towards each other is great for sorted arrays.

---
# Practice

Complete the function to find a pair that sums to target:

```python
def find_pair(arr, target):
    left = ???
    right = ???
    
    while left < right:
        current = arr[left] + arr[right]
        if current == target:
            return ???
        elif current < target:
            ??? += 1
        else:
            ??? -= 1
```

- `0`
- `len(arr) - 1`
- `[left, right]`
- `left`
- `right`

---
# Revision

Two pointers moving towards each other works when:

???

- Array is sorted
- Array is unsorted
- Array has duplicates
- Array is reversed 