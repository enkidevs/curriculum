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

# Merging Two Sorted Arrays

When merging sorted arrays, we can use two pointers to track our position in each array.

```python
def merge(nums1, nums2):
    result = []
    p1 = p2 = 0
    
    while p1 < len(nums1) and p2 < len(nums2):
        if nums1[p1] <= nums2[p2]:
            result.append(nums1[p1])
            p1 += 1
        else:
            result.append(nums2[p2])
            p2 += 1
            
    # Add remaining elements
    result.extend(nums1[p1:])
    result.extend(nums2[p2:])
    return result
```

> 💡 Compare elements at both pointers and take the smaller one, advancing that pointer.

---
# Practice

Complete the function to merge two sorted arrays:

```python
def merge_arrays(arr1, arr2):
    result = []
    i = j = ???
    
    while i < len(arr1) and j < len(arr2):
        if arr1[i] <= arr2[j]:
            result.append(???)
            ???
        else:
            result.append(???)
            ???
```

- `0`
- `arr1[i]`
- `i += 1`
- `arr2[j]`
- `j += 1`

---
# Revision

When merging sorted arrays, we:

???

- Compare elements and take the smaller one
- Take elements alternately from each array
- Sort all elements at the end
- Take all elements from first array first 