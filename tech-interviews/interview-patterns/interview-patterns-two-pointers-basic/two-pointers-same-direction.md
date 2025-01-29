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

# Two Pointers in Same Direction

Sometimes both pointers move in the same direction, like when removing duplicates.

```python
def remove_duplicates(nums):
    """Remove duplicates in-place and return new length"""
    if not nums:
        return 0
        
    # write_pos is where we write next unique element
    write_pos = 1
    
    # read_pos finds next unique element
    for read_pos in range(1, len(nums)):
        if nums[read_pos] != nums[read_pos - 1]:
            nums[write_pos] = nums[read_pos]
            write_pos += 1
            
    return write_pos
```

> 💡 One pointer often writes while the other reads ahead looking for elements.

---
# Practice

Complete the function to remove duplicates:

```python
def remove_duplicates(arr):
    if not arr:
        return ???
        
    write = ???
    
    for read in range(1, len(arr)):
        if arr[read] != arr[read - 1]:
            arr[???] = arr[???]
            write += ???
```

- `0`
- `1`
- `write`
- `read`
- `1`

---
# Revision

Two pointers moving in same direction is good for:

???

- Processing array elements sequentially
- Finding pairs that sum to target
- Searching in sorted array
- Finding middle element 