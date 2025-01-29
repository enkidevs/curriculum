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

# Cyclic Sort Pattern

The cyclic sort pattern efficiently sorts arrays containing numbers in a given range.

```python
def cyclic_sort(nums):
    """Sort array containing numbers 1 to n"""
    i = 0
    while i < len(nums):
        # Correct position for current number
        correct_pos = nums[i] - 1
        
        # If number isn't at its correct position
        if nums[i] != nums[correct_pos]:
            # Swap with number at correct position
            nums[i], nums[correct_pos] = nums[correct_pos], nums[i]
        else:
            i += 1
            
    return nums
```

> 💡 Each number should be at index = value - 1 (for 1 to n range).

This pattern is especially useful for:
- Finding missing numbers
- Finding duplicates
- Finding smallest missing positive

---
# Practice

Complete the function to find a missing number in range 0 to n:

```python
def find_missing(nums):
    i = 0
    while i < len(nums):
        correct_pos = ???
        
        if nums[i] < len(nums) and nums[i] != ???:
            nums[i], nums[???] = nums[???], nums[i]
        else:
            i += 1
            
    # Find missing number
    for i in range(len(nums)):
        if nums[i] != ???:
            return ???
            
    return len(nums)
```

- `nums[i]`
- `nums[correct_pos]`
- `correct_pos`
- `correct_pos`
- `i`
- `i`

---
# Revision

Cyclic sort works best when:

???

- Numbers are in range 1 to n
- Array is already partially sorted
- Numbers can be any value
- Array has duplicates 
