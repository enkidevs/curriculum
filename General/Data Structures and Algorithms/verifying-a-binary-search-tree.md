# verifying-a-binary-search-tree
author: jfarmer

levels:
 - basic

type: undefined

category: how to

---
## Content

Sometimes we might have a binary tree and want to verify whether it is organized as a binary search tree.  The naive algorithm — traverse the tree, checking at every node  whether the node contains a value larger than the value at the left child and smaller than the value on the right child — does not always work.  Consider the following tree:

```text
   20
  /  \
10    30
     /  \
    5    40
```

At each node, the left child is smaller and the right child is greater, but this tree is still not a BST since `5` is less than `20` but is in its right sub-tree.  Instead, we have to make sure that every node in the left sub-tree is smaller than the current node and every node in the right sub-tree is greater than the current node.

Phrased another way:

1. The value of the current node should be the *maximum* value among all the values in the left sub-tree
2. The value of the current node should be the *minimum* value among all the values in the right sub-tree

We can check this recursively using the following pseudo-code:

```text
function isBST(root, minKey, maxKey)
  if root is empty then
    return true
  end

  if root->key < minKey OR
     root->key > maxKey then
    return false
  end

  return isBST(root->left,
               minKey, root->key) AND
         isBST(root->right,
               root->key, maxKey)
end
```

We should pass in the smallest-possible value for `minKey` and the largest-possible value `maxKey` initially.  What those values are depends on the type of information being stored in the BST and the specific language in which the BST is being implemented.

For example, if we're implementing the BST in C and storing integers then we might pass in the `INT_MIN` and `INT_MAX` constants as initial values.  If we're implementing the BST in JavaScript and storing numerical values then we might pass in `-Infinity` and `Infinity` as initial values.

---
## Practice

Is the following a *binary search tree*?
```
          15
        /    \
       10     20
      /      /  \
     3      18 - 28 
```

???
*No
*Yes
---
## Revision

Which of the following is a complete definition of a node in a binary search tree?

???
*A node has to be larger than any node its left subtree and smaller than any node in the right one.
*A node has to be larger than its left child and smaller than its right one.
*A node has to be larger than the root and smaller than the right-most leaf.
*A node has to be larger than any node its right subtree and smaller than any node in the left one.