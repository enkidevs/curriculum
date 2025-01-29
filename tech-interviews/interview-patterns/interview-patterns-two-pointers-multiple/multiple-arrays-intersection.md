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

# Array Intersections

Finding intersections between arrays is a common application of the Multiple Arrays pattern.

```python
def intersection_sorted(nums1, nums2):
    """Find intersection of two sorted arrays"""
    p1 = p2 = 0
    result = []
    
    while p1 < len(nums1) and p2 < len(nums2):
        if nums1[p1] == nums2[p2]:
            # Add only if different from previous
            if not result or result[-1] != nums1[p1]:
                result.append(nums1[p1])
            p1 += 1
            p2 += 1
        elif nums1[p1] < nums2[p2]:
            p1 += 1
        else:
            p2 += 1
            
    return result
```

> 💡 For unsorted arrays, consider sorting first or using a hash set, depending on the size and constraints.

Different types of intersections:
1. Simple intersection (elements in both arrays)
2. Intersection with duplicates
3. Intersection of multiple arrays
4. Intersection with frequency constraints

Key optimizations:
- Sort arrays first for O(n log n + m log m) time
- Use hash set for O(n + m) time but O(n) space
- Track frequencies for duplicate handling
- Early termination when possible

---
# Practice

Complete the function to find intersection of three sorted arrays:

```python
def intersection_three(arr1, arr2, arr3):
    p1 = p2 = p3 = ???
    result = []
    
    while p1 < len(arr1) and p2 < len(arr2) and p3 < len(arr3):
        if arr1[p1] == arr2[p2] == ???:
            result.append(???)
            p1 += 1
            p2 += 1
            p3 += 1
        else:
            # Move pointer of smallest value
            min_val = min(arr1[p1], arr2[p2], arr3[p3])
            if arr1[p1] == min_val:
                ???
            if arr2[p2] == min_val:
                ???
            if arr3[p3] == min_val:
                ???
```

- `0`
- `arr3[p3]`
- `arr1[p1]`
- `p1 += 1`
- `p2 += 1`
- `p3 += 1`

---
# Revision

For finding array intersections, sorting first is better than using a hash set when:

???

- Space complexity is more important than time
- Arrays are already nearly sorted
- Arrays have many duplicates
- Arrays have different sizes 