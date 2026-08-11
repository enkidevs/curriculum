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

# Finding Missing Numbers

Cyclic sort can help find missing numbers in a range.

```python
def find_missing_number(nums):
    """Find missing number in array containing 0 to n"""
    i = 0
    while i < len(nums):
        correct_pos = nums[i]
        
        # Only swap if number is within range
        if nums[i] < len(nums) and nums[i] != nums[correct_pos]:
            nums[i], nums[correct_pos] = nums[correct_pos], nums[i]
        else:
            i += 1
            
    # Find first number not at correct position
    for i in range(len(nums)):
        if nums[i] != i:
            return i
            
    return len(nums)
```

> 💡 After cyclic sort, missing number is at first index where value != index.

---
# Practice

Complete the function to find missing number:

```python
def find_missing(nums):
    i = ???
    while i < len(nums):
        pos = nums[???]
        
        if nums[i] < len(nums) and nums[i] != nums[???]:
            nums[i], nums[pos] = nums[???], nums[???]
        else:
            ??? += 1
            
    for i in range(len(nums)):
        if nums[i] != ???:
            return ???
```

- `0`
- `i`
- `pos`
- `pos`
- `i`
- `i`
- `i`
- `i`

---
# Revision

To find missing number after cyclic sort:

???

- Check first index where value != index
- Check last index where value != index
- Check all indices where value == index
- Return length of array 