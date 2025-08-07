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

# Subsets with Duplicates

Handling duplicates requires sorting and skipping duplicate processing.

```python
def find_subsets_with_duplicates(nums):
    """Generate all subsets of set with duplicates"""
    # Sort to group duplicates
    nums.sort()
    subsets = [[]]
    start, end = 0, 0
    
    for i in range(len(nums)):
        start = 0
        
        # If current and previous elements are same,
        # only add to subsets added in previous step
        if i > 0 and nums[i] == nums[i-1]:
            start = end
            
        end = len(subsets)
        
        # Add current number to subsets
        for j in range(start, end):
            subset = list(subsets[j])
            subset.append(nums[i])
            subsets.append(subset)
            
    return subsets
```

> 💡 Sort first, then only add duplicates to subsets created in previous step.

---
# Practice

Complete the function for subsets with duplicates:

```python
def subsets_with_dup(nums):
    nums.???()
    result = [[]]
    start = end = 0
    
    for i in range(len(nums)):
        start = ???
        
        if i > 0 and nums[i] == nums[???]:
            start = ???
            
        end = len(???)
        
        for j in range(start, ???):
            subset = list(result[j])
            subset.append(nums[???])
            result.append(subset)
```

- `sort`
- `0`
- `i-1`
- `end`
- `result`
- `end`
- `i`

---
# Revision

For subsets with duplicates:

???

- Sort first and track previous step
- Generate all and remove duplicates
- Skip all duplicates
- Use hash set 