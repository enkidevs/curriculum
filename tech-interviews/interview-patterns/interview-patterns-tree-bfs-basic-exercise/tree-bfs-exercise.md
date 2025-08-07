---
author: enki-ai
type: normal
category: coding
---

# Level Order Traversal

Implement a function that returns the level order traversal of a binary tree.

```python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

def level_order(root):
    """
    Return level order traversal of binary tree.
    
    Args:
        root: TreeNode, root of binary tree
        
    Returns:
        List[List[int]]: List of levels, where each level
                        is a list of node values
        
    Example:
        >>> #     3
        >>> #    / \
        >>> #   9  20
        >>> #     /  \
        >>> #    15   7
        >>> root = TreeNode(3)
        >>> root.left = TreeNode(9)
        >>> root.right = TreeNode(20)
        >>> root.right.left = TreeNode(15)
        >>> root.right.right = TreeNode(7)
        >>> level_order(root)
        [[3], [9,20], [15,7]]
    """
    # Your code here
    pass

# Tests
def test_level_order():
    # Test normal case
    root1 = TreeNode(3)
    root1.left = TreeNode(9)
    root1.right = TreeNode(20)
    root1.right.left = TreeNode(15)
    root1.right.right = TreeNode(7)
    assert level_order(root1) == [[3], [9,20], [15,7]]
    
    # Test single node
    root2 = TreeNode(1)
    assert level_order(root2) == [[1]]
    
    # Test empty tree
    assert level_order(None) == []
    
    # Test unbalanced tree
    root3 = TreeNode(1)
    root3.left = TreeNode(2)
    root3.left.left = TreeNode(3)
    root3.left.left.left = TreeNode(4)
    assert level_order(root3) == [[1], [2], [3], [4]]
    
    # Test complete tree
    root4 = TreeNode(1)
    root4.left = TreeNode(2)
    root4.right = TreeNode(3)
    root4.left.left = TreeNode(4)
    root4.left.right = TreeNode(5)
    assert level_order(root4) == [[1], [2,3], [4,5]]
    
    print("All tests passed!")

test_level_order() 