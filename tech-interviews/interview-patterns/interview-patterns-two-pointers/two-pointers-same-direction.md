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

# Same Direction Two Pointers

Sometimes, both pointers move in the same direction rather than towards each other. This variation is useful for problems involving sequences or subarrays.

```python
def remove_duplicates(arr):
    if not arr:
        return 0
        
    write_pointer = 1  # Start from index 1
    
    for read_pointer in range(1, len(arr)):
        if arr[read_pointer] != arr[read_pointer - 1]:
            arr[write_pointer] = arr[read_pointer]
            write_pointer += 1
            
    return write_pointer
```

> 💡 The read pointer scans through the array while the write pointer keeps track of where to place the next unique element.

This approach is particularly useful for:
- Removing duplicates from sorted arrays
- Finding subarrays with specific properties
- Merging sorted arrays in-place

---
# Practice

Complete the function to remove all occurrences of a target value from an array in-place and return the new length:

```python
def remove_element(arr, target):
    write = ???
    
    for read in range(???):
        if arr[read] != ???:
            arr[write] = ???
            write += 1
            
    return ???
```

- `0`
- `len(arr)`
- `target`
- `arr[read]`
- `write`

---
# Revision

When using same-direction two pointers, the read pointer typically:

???

- Scans through all elements sequentially
- Moves backwards through the array
- Skips elements randomly
- Stays fixed while write pointer moves 