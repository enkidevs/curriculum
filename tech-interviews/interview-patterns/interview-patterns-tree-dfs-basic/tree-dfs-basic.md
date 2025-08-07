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

# Tree Depth First Search

DFS explores a tree branch by branch using recursion or a stack.

```python
def dfs_traversal(root):
    """Three types of DFS traversals"""
    def preorder(node, result):
        if not node:
            return
        result.append(node.val)    # Visit node
        preorder(node.left, result)  # Left subtree
        preorder(node.right, result) # Right subtree
        
    def inorder(node, result):
        if not node:
            return
        inorder(node.left, result)   # Left subtree
        result.append(node.val)      # Visit node
        inorder(node.right, result)  # Right subtree
        
    def postorder(node, result):
        if not node:
            return
        postorder(node.left, result)  # Left subtree
        postorder(node.right, result) # Right subtree
        result.append(node.val)       # Visit node
        
    pre, in_ord, post = [], [], []
    preorder(root, pre)
    inorder(root, in_ord)
    postorder(root, post)
    return pre, in_ord, post
```

> 💡 The order of visiting node and traversing subtrees gives three different DFS patterns.

---
# Practice

Complete the inorder traversal function:

```python
def inorder(node, result):
    if not ???:
        return
        
    inorder(node.???, result)
    result.???(node.???)
    inorder(node.???, result)
```

- `node`
- `left`
- `append`
- `val`
- `right`

---
# Revision

DFS traversal order options are:

???

- Pre/In/Post-order
- Level/Depth order
- Front/Back order
- Top/Bottom order 