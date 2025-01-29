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

# Subsets Pattern

The subsets pattern generates all possible subsets of a set.

```python
def find_subsets(nums):
    """Generate all subsets of the given set"""
    subsets = [[]]  # Start with empty subset
    
    for num in nums:
        # Take all existing subsets and add current number
        # to create new subsets
        n = len(subsets)
        for i in range(n):
            # Create new subset from existing subset
            # and add current number
            subset = list(subsets[i])
            subset.append(num)
            subsets.append(subset)
            
    return subsets
```

> 💡 For each number, double the subsets by adding it to all existing subsets.

---
# Practice

Complete the function to find subsets:

```python
def subsets(nums):
    result = [[]]
    
    for num in ???:
        n = len(???)
        for i in range(???):
            subset = list(result[???])
            subset.???(num)
            result.???(subset)
```

- `nums`
- `result`
- `n`
- `i`
- `append`
- `append`

---
# Revision

The number of subsets for n elements is:

???

- 2^n
- n^2
- n!
- n 