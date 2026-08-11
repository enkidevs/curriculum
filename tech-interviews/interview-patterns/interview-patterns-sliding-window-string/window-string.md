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

# String Sliding Window

Use a sliding window with a frequency counter to find patterns in strings.

```python
def find_anagrams(s, p):
    """Find start indices of all anagrams of p in s"""
    if len(p) > len(s):
        return []
        
    # Initialize frequency counters
    p_count = {}
    window_count = {}
    for char in p:
        p_count[char] = p_count.get(char, 0) + 1
        
    # First window
    for i in range(len(p)):
        char = s[i]
        window_count[char] = window_count.get(char, 0) + 1
        
    result = []
    if window_count == p_count:
        result.append(0)
        
    # Slide window
    for i in range(len(p), len(s)):
        # Remove first character
        first = s[i - len(p)]
        window_count[first] -= 1
        if window_count[first] == 0:
            del window_count[first]
            
        # Add new character
        last = s[i]
        window_count[last] = window_count.get(last, 0) + 1
        
        # Check if anagram
        if window_count == p_count:
            result.append(i - len(p) + 1)
            
    return result
```

> 💡 Use a hash map to track character frequencies in the window.

---
# Practice

Complete the function to find all anagrams:

```python
def find_anagrams(s, p):
    if len(p) > len(s):
        return ???
        
    p_freq = {}
    window = {}
    
    for c in p:
        p_freq[c] = p_freq.get(???, ???) + 1
        
    for i in range(len(???)):
        window[s[i]] = window.get(s[i], 0) + ???
```

- `[]`
- `c`
- `0`
- `p`
- `1`

---
# Revision

In string sliding window with frequency counter:

???

- Track character counts in a hash map
- Store entire substrings
- Sort characters in window
- Use array indices only 