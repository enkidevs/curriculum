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

# Three-way Array Intersection

To find common elements among three arrays, we use three pointers and advance the one pointing to the smallest value.

```python
def intersection_three(arr1, arr2, arr3):
    i = j = k = 0
    result = []
    
    while i < len(arr1) and j < len(arr2) and k < len(arr3):
        if arr1[i] == arr2[j] == arr3[k]:
            result.append(arr1[i])
            i += 1
            j += 1
            k += 1
        else:
            # Move pointer with smallest value
            min_val = min(arr1[i], arr2[j], arr3[k])
            if arr1[i] == min_val: i += 1
            if arr2[j] == min_val: j += 1
            if arr3[k] == min_val: k += 1
            
    return result
```

> 💡 Multiple pointers can point to the same minimum value, so check each one separately.

---
# Practice

Complete the three-way intersection function:

```python
def find_common(a1, a2, a3):
    i = j = k = ???
    result = []
    
    while i < len(a1) and j < len(a2) and k < len(a3):
        if a1[i] == a2[j] == ???:
            result.append(???)
            i += 1; j += 1; k += 1
```

- `0`
- `a3[k]`
- `a1[i]`

---
# Revision

In three-way intersection, we advance pointers when:

???

- They point to the current minimum value
- All values are equal
- The array is the longest
- The array has duplicates 