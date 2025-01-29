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

# Two Pointers Pattern

The Two Pointers pattern involves using two pointers to traverse an array or sequence, usually moving them towards each other or in the same direction.

```python
def has_pair_with_sum(arr, target):
    left = 0
    right = len(arr) - 1
    
    while left < right:
        current_sum = arr[left] + arr[right]
        if current_sum == target:
            return True
        elif current_sum < target:
            left += 1
        else:
            right -= 1
    return False
```

> 💡 This pattern is particularly useful when dealing with sorted arrays and problems that require finding pairs or subarrays that satisfy certain conditions.

The pattern helps reduce time complexity from O(n²) to O(n) in many cases by avoiding nested loops.

---
# Practice

Complete the function to find if there's a pair of numbers in a sorted array that adds up to the target:

```python
def find_pair(arr, target):
    left = ???
    right = ???
    
    while left < right:
        sum = arr[left] + arr[right]
        if sum == target:
            return ???
        elif sum < target:
            ???
        else:
            ???
    return False
```

- `0`
- `len(arr) - 1`
- `True`
- `left += 1`
- `right -= 1`

---
# Revision

The Two Pointers pattern typically reduces time complexity from ??? to ???.

- `O(n²)`
- `O(n)`
- `O(log n)`
- `O(1)` 