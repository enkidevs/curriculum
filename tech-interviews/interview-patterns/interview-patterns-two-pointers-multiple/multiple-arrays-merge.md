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

# Merging Sorted Arrays

The Multiple Arrays pattern often involves using pointers to track positions in different arrays simultaneously.

```python
def merge_sorted_arrays(nums1, m, nums2, n):
    """
    Merge nums2 into nums1 in-place.
    nums1 has enough space (length = m + n) to hold additional elements from nums2
    """
    # Start from the end to avoid overwriting
    p1 = m - 1  # Last element in nums1
    p2 = n - 1  # Last element in nums2
    p = m + n - 1  # Last position in merged array
    
    while p2 >= 0:  # While there are elements in nums2
        if p1 >= 0 and nums1[p1] > nums2[p2]:
            nums1[p] = nums1[p1]
            p1 -= 1
        else:
            nums1[p] = nums2[p2]
            p2 -= 1
        p -= 1
```

> 💡 When merging arrays in-place, start from the end to avoid overwriting elements that haven't been processed yet.

Key strategies:
- Use multiple pointers to track positions in each array
- Consider direction of merge (start vs end)
- Handle remaining elements after one array is exhausted
- Be mindful of array bounds

---
# Practice

Complete the function to merge k sorted arrays:

```python
def merge_k_sorted(arrays):
    def merge_two(arr1, arr2):
        result = []
        p1, p2 = ???, ???
        
        while p1 < len(arr1) and p2 < len(arr2):
            if arr1[p1] <= arr2[p2]:
                result.append(???)
                ???
            else:
                result.append(???)
                ???
                
        # Add remaining elements
        result.extend(arr1[p1:])
        result.extend(arr2[p2:])
        return result
```

- `0`
- `0`
- `arr1[p1]`
- `p1 += 1`
- `arr2[p2]`
- `p2 += 1`

---
# Revision

When merging sorted arrays in-place, we typically:

???

- Start from the end to avoid overwriting
- Start from the beginning with extra space
- Use a hash map to track elements
- Sort after merging 