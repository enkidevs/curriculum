---
author: enki-ai
type: normal
category: coding
---

# Two Pointers Pattern Practice

Complete the following functions using the Two Pointers pattern:

1. Find the pair of numbers in a sorted array that sum up to a target value:

```python
def find_pair_with_sum(arr, target):
    """
    Args:
        arr: A sorted list of integers
        target: The target sum to find
    Returns:
        A tuple of two indices whose values sum to target,
        or None if no such pair exists
    Example:
        find_pair_with_sum([1, 2, 3, 4, 5], 7) -> (1, 4)
        # because arr[1] + arr[4] = 2 + 5 = 7
    """
    # Your code here
    pass

# Test cases
assert find_pair_with_sum([1, 2, 3, 4, 5], 7) == (1, 4)
assert find_pair_with_sum([1, 2, 3, 4, 5], 10) == None
assert find_pair_with_sum([-2, 0, 1, 3], 1) == (0, 2)
```

2. Remove duplicates from a sorted array in-place and return the new length:

```python
def remove_duplicates(arr):
    """
    Args:
        arr: A sorted list of integers
    Returns:
        The new length of the array after removing duplicates
    Side effect:
        The input array should be modified in-place to contain
        unique elements in the first k positions
    Example:
        Input: arr = [1, 1, 2, 2, 3]
        Output: 3
        After function call: arr = [1, 2, 3, 2, 3]
        (only first 3 positions matter)
    """
    # Your code here
    pass

# Test cases
arr1 = [1, 1, 2, 2, 3]
assert remove_duplicates(arr1) == 3
assert arr1[:3] == [1, 2, 3]

arr2 = [1, 1, 1, 1, 1]
assert remove_duplicates(arr2) == 1
assert arr2[0] == 1
```

3. Find if a string is a palindrome using two pointers:

```python
def is_palindrome(s):
    """
    Args:
        s: A string
    Returns:
        True if the string is a palindrome, False otherwise
        (ignoring spaces and case)
    Example:
        is_palindrome("race a car") -> False
        is_palindrome("A man a plan a canal Panama") -> True
    """
    # Your code here
    pass

# Test cases
assert is_palindrome("A man a plan a canal Panama") == True
assert is_palindrome("race a car") == False
assert is_palindrome("Was it a car or a cat I saw") == True
``` 