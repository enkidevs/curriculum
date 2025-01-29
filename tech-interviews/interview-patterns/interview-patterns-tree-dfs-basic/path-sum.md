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

# Path Sum in Binary Tree

DFS is perfect for finding paths that satisfy certain conditions.

```python
def has_path_sum(root, target_sum):
    """Check if tree has root-to-leaf path summing to target"""
    if not root:
        return False
        
    # Subtract node value from target
    target_sum -= root.val
    
    # If leaf node, check if remaining sum is 0
    if not root.left and not root.right:
        return target_sum == 0
        
    # Recursively check left and right subtrees
    return (has_path_sum(root.left, target_sum) or
            has_path_sum(root.right, target_sum))
```

> 💡 Subtract node values from target sum while traversing down the path.

---
# Practice

Complete the function to find path sum:

```python
def has_path(root, target):
    if not ???:
        return False
        
    target -= root.???
    
    if not root.left and not root.???:
        return target == ???
        
    return has_path(root.???, target) or has_path(root.???, target)
```

- `root`
- `val`
- `right`
- `0`
- `left`
- `right`

---
# Revision

For path sum problems:

???

- Subtract values while going down
- Add values while going down
- Track path in array
- Use BFS traversal 