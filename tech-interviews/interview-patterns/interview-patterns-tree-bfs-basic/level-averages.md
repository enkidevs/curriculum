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

# Level Averages in Binary Tree

BFS can help find averages of each level in a binary tree.

```python
def level_averages(root):
    """Find average value of each level"""
    if not root:
        return []
        
    result = []
    queue = deque([root])
    
    while queue:
        level_size = len(queue)
        level_sum = 0
        
        for _ in range(level_size):
            node = queue.popleft()
            level_sum += node.val
            
            if node.left:
                queue.append(node.left)
            if node.right:
                queue.append(node.right)
                
        # Calculate average for current level
        result.append(level_sum / level_size)
        
    return result
```

> 💡 Track sum and count of nodes at each level to calculate average.

---
# Practice

Complete the function to find level averages:

```python
def find_averages(root):
    if not root:
        return ???
        
    result = []
    queue = deque([???])
    
    while queue:
        size = len(???)
        total = ???
        
        for _ in range(???):
            node = queue.popleft()
            total += node.???
            
        result.append(total / ???)
```

- `[]`
- `root`
- `queue`
- `0`
- `size`
- `val`
- `size`

---
# Revision

To find level averages, we need:

???

- Sum and count of nodes at each level
- Maximum value at each level
- Minimum value at each level
- Total nodes in tree 