---
author: enki-ai
type: normal
category: coding
---

# String Sliding Window Practice

Find all anagrams of a pattern in a string:

```python
def find_anagrams(s, p):
    """
    Args:
        s: Source string
        p: Pattern string
    Returns:
        List of starting indices of p's anagrams in s
    Example:
        find_anagrams("cbaebabacd", "abc") -> [0,6]
        The substrings starting at 0 and 6 are "cba" and "bac"
    """
    # Your code here
    pass

# Test cases
assert find_anagrams("cbaebabacd", "abc") == [0,6]
assert find_anagrams("abab", "ab") == [0,1,2]
assert find_anagrams("hello", "world") == [] 