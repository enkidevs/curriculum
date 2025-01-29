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

# Handling Duplicates in Three Pointers

A key challenge in Three Pointers problems is avoiding duplicate results while not missing any valid combinations.

```python
def three_sum_unique(nums):
    nums.sort()
    result = []
    
    for i in range(len(nums) - 2):
        # Skip duplicates for first pointer
        if i > 0 and nums[i] == nums[i - 1]:
            continue
            
        target = -nums[i]
        left = i + 1
        right = len(nums) - 1
        
        while left < right:
            current_sum = nums[left] + nums[right]
            
            if current_sum == target:
                result.append([nums[i], nums[left], nums[right]])
                
                # Skip duplicates for second pointer
                while left < right and nums[left] == nums[left + 1]:
                    left += 1
                # Skip duplicates for third pointer
                while left < right and nums[right] == nums[right - 1]:
                    right -= 1
                    
                left += 1
                right -= 1
            elif current_sum < target:
                left += 1
            else:
                right -= 1
                
    return result
```

> 💡 Skip duplicates after finding a valid combination, not before, to avoid missing valid results.

Key strategies:
- Sort the array first
- Skip duplicates for the fixed pointer
- Skip duplicates for moving pointers after finding a match
- Process each unique value exactly once

---
# Practice

Complete the function to find unique quadruplets that sum to a target:

```python
def four_sum(nums, target):
    nums.sort()
    result = []
    
    for i in range(len(nums) - 3):
        # Skip duplicates for i
        if i > 0 and nums[i] == ???:
            ???
            
        for j in range(i + 1, len(nums) - 2):
            # Skip duplicates for j
            if j > i + 1 and nums[j] == ???:
                ???
                
            left = ???
            right = ???
            
            while left < right:
                current_sum = nums[i] + nums[j] + nums[left] + nums[right]
                if current_sum == target:
                    result.append([nums[i], nums[j], nums[left], nums[right]])
                    # Skip duplicates
                    while left < right and nums[left] == nums[left + 1]:
                        ???
                    while left < right and nums[right] == nums[right - 1]:
                        ???
```

- `nums[i - 1]`
- `continue`
- `nums[j - 1]`
- `continue`
- `j + 1`
- `len(nums) - 1`
- `left += 1`
- `right -= 1`

---
# Revision

When handling duplicates in Three Pointers problems, we should:

???

- Skip duplicates after finding a match
- Skip duplicates before starting the search
- Never skip duplicates
- Skip duplicates randomly 