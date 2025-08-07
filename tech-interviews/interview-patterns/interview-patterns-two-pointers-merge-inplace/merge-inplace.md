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

# In-place Array Merging

To merge arrays without extra space, we can work backwards from the end.

```python
def merge_inplace(nums1, m, nums2, n):
    """
    Merge nums2 into nums1 in-place.
    nums1 has enough space at the end.
    """
    p = m + n - 1  # Write position
    p1 = m - 1     # Last element in nums1
    p2 = n - 1     # Last element in nums2
    
    while p2 >= 0:
        if p1 >= 0 and nums1[p1] > nums2[p2]:
            nums1[p] = nums1[p1]
            p1 -= 1
        else:
            nums1[p] = nums2[p2]
            p2 -= 1
        p -= 1
```

> 💡 Start from the end to avoid overwriting elements we still need to process.

---
# Practice

Complete the in-place merge function:

```python
def merge(arr1, m, arr2, n):
    write = ???
    i = m - 1
    j = ???
    
    while j >= 0:
        if i >= 0 and arr1[i] > arr2[j]:
            arr1[write] = ???
            i -= 1
        else:
            arr1[write] = ???
            j -= 1
        write -= 1
```

- `m + n - 1`
- `n - 1`
- `arr1[i]`
- `arr2[j]`

---
# Revision

When merging arrays in-place, we start from:

???

- The end to avoid overwriting
- The beginning with extra space
- The middle of both arrays
- Any position randomly 