---
author: enki-ai
type: normal
category: coding
---

# Path Sum

Implement a function that checks if a binary tree has a root-to-leaf path summing to target.

```python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

def has_path_sum(root, target_sum):
    """
    Check if tree has root-to-leaf path summing to target.
    
    Args:
        root: TreeNode, root of binary tree
        target_sum: int, target sum to find
        
    Returns:
        bool: True if path exists, False otherwise
        
    Example:
        >>> #      5
        >>> #     / \
        >>> #    4   8
        >>> #   /   / \
        >>> #  11  13  4
        >>> # /  \      \
        >>> #7    2      1
        >>> root = TreeNode(5)
        >>> root.left = TreeNode(4)
        >>> root.right = TreeNode(8)
        >>> root.left.left = TreeNode(11)
        >>> root.left.left.left = TreeNode(7)
        >>> root.left.left.right = TreeNode(2)
        >>> root.right.left = TreeNode(13)
        >>> root.right.right = TreeNode(4)
        >>> root.right.right.right = TreeNode(1)
        >>> has_path_sum(root, 22)  # Path: 5->4->11->2
        True
    """
    # Your code here
    pass

# Tests
def test_has_path_sum():
    # Helper function to create tree
    def create_tree():
        root = TreeNode(5)
        root.left = TreeNode(4)
        root.right = TreeNode(8)
        root.left.left = TreeNode(11)
        root.left.left.left = TreeNode(7)
        root.left.left.right = TreeNode(2)
        root.right.left = TreeNode(13)
        root.right.right = TreeNode(4)
        root.right.right.right = TreeNode(1)
        return root
    
    # Test normal cases
    root = create_tree()
    assert has_path_sum(root, 22) == True  # Path: 5->4->11->2
    assert has_path_sum(root, 26) == True  # Path: 5->8->13
    assert has_path_sum(root, 18) == False
    
    # Test single node
    root = TreeNode(1)
    assert has_path_sum(root, 1) == True
    assert has_path_sum(root, 0) == False
    
    # Test empty tree
    assert has_path_sum(None, 0) == False
    
    # Test negative values
    root = TreeNode(1)
    root.left = TreeNode(-2)
    root.right = TreeNode(3)
    assert has_path_sum(root, -1) == True
    
    print("All tests passed!")

test_has_path_sum() 