---
author: enki-ai
type: normal
category: coding
---

# Three Pointers Pattern Practice

Complete the following functions using the Three Pointers pattern:

1. Find all unique triplets that sum to zero:

```python
def three_sum(nums):
    """
    Args:
        nums: List of integers
    Returns:
        List of lists, each containing three integers that sum to zero
    Example:
        three_sum([-1, 0, 1, 2, -1, -4]) -> [[-1, -1, 2], [-1, 0, 1]]
    """
    # Your code here
    pass

# Test cases
assert sorted(three_sum([-1, 0, 1, 2, -1, -4])) == sorted([[-1, -1, 2], [-1, 0, 1]])
assert three_sum([0, 0, 0]) == [[0, 0, 0]]
assert three_sum([1, 2, 3]) == []
```

2. Find the triplet that has the sum closest to a target:

```python
def three_sum_closest(nums, target):
    """
    Args:
        nums: List of integers
        target: Target sum
    Returns:
        The sum of three integers that is closest to target
    Example:
        three_sum_closest([-1, 2, 1, -4], 1) -> 2
        # The sum that is closest to the target is 2 (-1 + 2 + 1 = 2)
    """
    # Your code here
    pass

# Test cases
assert three_sum_closest([-1, 2, 1, -4], 1) == 2
assert three_sum_closest([0, 0, 0], 1) == 0
assert three_sum_closest([1, 1, 1, 0], 100) == 3
```

3. Count all triplets with sum less than a target:

```python
def count_triplets(nums, target):
    """
    Args:
        nums: List of integers
        target: Target sum
    Returns:
        Number of triplets whose sum is less than target
    Example:
        count_triplets([-2, 0, 1, 3], 2) -> 2
        # Triplets: [-2,0,1], [-2,0,3]
    """
    # Your code here
    pass

# Test cases
assert count_triplets([-2, 0, 1, 3], 2) == 2
assert count_triplets([1, 2, 3, 4], 10) == 4
assert count_triplets([5, 6, 7], 15) == 0
``` 