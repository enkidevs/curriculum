---
author: enki-ai
type: normal
category: coding
---

# Find Missing Number

Implement a function that finds the missing number in an array containing n distinct numbers in the range [0, n].

```python
def find_missing_number(nums):
    """
    Find the missing number in range [0, n] where n = len(nums).
    
    Args:
        nums: List[int], array containing n distinct numbers in range [0, n]
        
    Returns:
        int: The missing number
        
    Example:
        >>> find_missing_number([3,0,1])
        2
        >>> find_missing_number([0,1])
        2
        >>> find_missing_number([9,6,4,2,3,5,7,0,1])
        8
    """
    # Your code here
    pass

def test_find_missing_number():
    # Test 1: Normal cases
    assert find_missing_number([3,0,1]) == 2
    assert find_missing_number([0,1]) == 2
    assert find_missing_number([9,6,4,2,3,5,7,0,1]) == 8
    
    # Test 2: Missing first number
    assert find_missing_number([1,2]) == 0
    assert find_missing_number([2,3,1]) == 0
    
    # Test 3: Missing last number
    assert find_missing_number([0,1,2]) == 3
    assert find_missing_number([1,0,3,2]) == 4
    
    # Test 4: Single element array
    assert find_missing_number([0]) == 1
    assert find_missing_number([1]) == 0
    
    # Test 5: Array with only two numbers
    assert find_missing_number([0,2]) == 1
    
    # Test 6: Numbers in random order
    assert find_missing_number([4,2,3,0,1,6]) == 5
    assert find_missing_number([5,3,2,1,0]) == 4
    
    # Test 7: Larger arrays
    assert find_missing_number([8,6,4,2,3,5,7,0,1]) == 9
    assert find_missing_number([9,8,6,4,2,3,5,7,0,1]) == 10
    
    print("All test cases passed!")

# Run tests
if __name__ == "__main__":
    test_find_missing_number() 