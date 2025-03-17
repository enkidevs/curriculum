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

# Three Pointers Pattern

The Three Pointers pattern is an extension of the Two Pointers pattern, used when we need to find three elements that satisfy certain conditions.

```python
def three_sum(nums):
    if len(nums) < 3:
        return []
    
    nums.sort()  # Sort for efficient searching
    result = []
    
    for i in range(len(nums) - 2):
        # Skip duplicates for i
        if i > 0 and nums[i] == nums[i - 1]:
            continue
            
        left = i + 1
        right = len(nums) - 1
        
        while left < right:
            current_sum = nums[i] + nums[left] + nums[right]
            
            if current_sum == 0:
                result.append([nums[i], nums[left], nums[right]])
                
                # Skip duplicates for left
                while left < right and nums[left] == nums[left + 1]:
                    left += 1
                # Skip duplicates for right
                while left < right and nums[right] == nums[right - 1]:
                    right -= 1
                    
                left += 1
                right -= 1
            elif current_sum < 0:
                left += 1
            else:
                right -= 1
                
    return result
```

> 💡 The key is to fix one element and use two pointers to find the other two elements, effectively reducing it to a Two Sum problem.

Common applications:
- Finding triplets that sum to zero
- Finding triplets closest to a target
- Finding triplets with a specific sum
- Finding triangles in a graph

---
# Practice

Complete the function to find if there's a triplet that sums to a target:

```python
def find_triplet(arr, target):
    arr.sort()
    
    for i in range(???):
        left = ???
        right = ???
        
        while left < right:
            current_sum = arr[i] + arr[left] + arr[right]
            if current_sum == target:
                return ???
            elif current_sum < target:
                ???
            else:
                ???
    return False
```

- `len(arr) - 2`
- `i + 1`
- `len(arr) - 1`
- `True`
- `left += 1`
- `right -= 1`

---
# Revision

When using Three Pointers pattern, we typically:

???

- Sort the array and fix one element
- Sort the array and fix two elements
- Use three moving pointers
- Don't need to sort the array 