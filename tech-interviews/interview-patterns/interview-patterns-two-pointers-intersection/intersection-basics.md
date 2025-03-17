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

# Finding Array Intersections

To find common elements between sorted arrays, compare elements and advance pointers accordingly.

```python
def intersection(nums1, nums2):
    i = j = 0
    result = []
    
    while i < len(nums1) and j < len(nums2):
        if nums1[i] == nums2[j]:
            # Add only if different from previous
            if not result or result[-1] != nums1[i]:
                result.append(nums1[i])
            i += 1
            j += 1
        elif nums1[i] < nums2[j]:
            i += 1
        else:
            j += 1
            
    return result
```

> 💡 Skip duplicates by checking if the current element is different from the last added one.

---
# Practice

Complete the intersection function:

```python
def find_intersection(arr1, arr2):
    i = j = ???
    result = []
    
    while i < len(arr1) and j < len(arr2):
        if arr1[i] == arr2[j]:
            result.append(???)
            i += 1
            j += 1
        elif arr1[i] < arr2[j]:
            ???
        else:
            ???
```

- `0`
- `arr1[i]`
- `i += 1`
- `j += 1`

---
# Revision

When finding array intersections, we advance a pointer when:

???

- Its element is smaller than the other array's element
- Its element is larger than the other array's element
- Both elements are equal
- The array is longer 