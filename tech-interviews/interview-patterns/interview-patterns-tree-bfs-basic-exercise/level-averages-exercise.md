---
author: enki-ai
type: normal
category: coding
---

# Level Averages

Implement a function that returns the average value of each level in a binary tree.

```python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

def level_averages(root):
    """
    Find average value of each level in binary tree.
    
    Args:
        root: TreeNode, root of binary tree
        
    Returns:
        List[float]: List of level averages
        
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
        >>> level_averages(root)
        [3.0, 14.5, 11.0]
    """
    # Your code here
    pass

# Tests
def test_level_averages():
    # Test normal case
    root1 = TreeNode(3)
    root1.left = TreeNode(9)
    root1.right = TreeNode(20)
    root1.right.left = TreeNode(15)
    root1.right.right = TreeNode(7)
    assert level_averages(root1) == [3.0, 14.5, 11.0]
    
    # Test single node
    root2 = TreeNode(1)
    assert level_averages(root2) == [1.0]
    
    # Test empty tree
    assert level_averages(None) == []
    
    # Test complete tree
    root3 = TreeNode(1)
    root3.left = TreeNode(2)
    root3.right = TreeNode(3)
    root3.left.left = TreeNode(4)
    root3.left.right = TreeNode(5)
    root3.right.left = TreeNode(6)
    root3.right.right = TreeNode(7)
    assert level_averages(root3) == [1.0, 2.5, 5.5]
    
    # Test negative values
    root4 = TreeNode(-10)
    root4.left = TreeNode(-5)
    root4.right = TreeNode(-15)
    assert level_averages(root4) == [-10.0, -10.0]
    
    print("All tests passed!")

test_level_averages() 