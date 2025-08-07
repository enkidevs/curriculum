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

# Tree Breadth First Search

BFS traverses a tree level by level using a queue.

```python
from collections import deque

def level_order(root):
    """Print tree level by level"""
    if not root:
        return []
        
    result = []
    queue = deque([root])
    
    while queue:
        level_size = len(queue)
        current_level = []
        
        for _ in range(level_size):
            node = queue.popleft()
            current_level.append(node.val)
            
            if node.left:
                queue.append(node.left)
            if node.right:
                queue.append(node.right)
                
        result.append(current_level)
        
    return result
```

> 💡 Use queue size to track nodes at each level.

---
# Practice

Complete the function for level order traversal:

```python
def level_order(root):
    if not root:
        return ???
        
    result = []
    queue = deque([???])
    
    while ???:
        size = len(???)
        level = []
        
        for _ in range(???):
            node = queue.???()
            level.append(node.???)
            
            if node.left:
                queue.???(node.left)
```

- `[]`
- `root`
- `queue`
- `queue`
- `size`
- `popleft`
- `val`
- `append`

---
# Revision

BFS uses a ??? to traverse tree ??? by ???.

- queue
- level
- level
- stack
- node
- depth 