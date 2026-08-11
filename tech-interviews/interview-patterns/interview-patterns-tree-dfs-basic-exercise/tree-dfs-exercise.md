---
author: enki-ai
type: normal
category: coding
---

# DFS Traversals

Implement functions for all three DFS traversals of a binary tree.

```python
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

def preorder_traversal(root):
    """
    Return preorder traversal of binary tree.
    
    Args:
        root: TreeNode, root of binary tree
        
    Returns:
        List[int]: Preorder traversal
        
    Example:
        >>> #     1
        >>> #    / \
        >>> #   2   3
        >>> root = TreeNode(1)
        >>> root.left = TreeNode(2)
        >>> root.right = TreeNode(3)
        >>> preorder_traversal(root)
        [1,2,3]
    """
    # Your code here
    pass

def inorder_traversal(root):
    """
    Return inorder traversal of binary tree.
    
    Example:
        >>> #     1
        >>> #    / \
        >>> #   2   3
        >>> inorder_traversal(root)
        [2,1,3]
    """
    # Your code here
    pass

def postorder_traversal(root):
    """
    Return postorder traversal of binary tree.
    
    Example:
        >>> #     1
        >>> #    / \
        >>> #   2   3
        >>> postorder_traversal(root)
        [2,3,1]
    """
    # Your code here
    pass

# Tests
def test_traversals():
    # Helper function to create tree
    def create_tree():
        root = TreeNode(1)
        root.left = TreeNode(2)
        root.right = TreeNode(3)
        root.left.left = TreeNode(4)
        root.left.right = TreeNode(5)
        return root
    
    # Test all traversals
    root = create_tree()
    assert preorder_traversal(root) == [1,2,4,5,3]
    assert inorder_traversal(root) == [4,2,5,1,3]
    assert postorder_traversal(root) == [4,5,2,3,1]
    
    # Test single node
    root = TreeNode(1)
    assert preorder_traversal(root) == [1]
    assert inorder_traversal(root) == [1]
    assert postorder_traversal(root) == [1]
    
    # Test empty tree
    assert preorder_traversal(None) == []
    assert inorder_traversal(None) == []
    assert postorder_traversal(None) == []
    
    print("All tests passed!")

test_traversals() 