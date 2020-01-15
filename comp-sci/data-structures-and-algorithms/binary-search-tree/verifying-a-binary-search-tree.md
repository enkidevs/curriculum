---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

aspects:

  - deep

  - workout

links:

  - '[Validating a BST](http://stackoverflow.com/questions/499995/how-do-you-validate-a-binary-search-tree){website}'

parent: the-binary-search-tree-data-structure

---

# Verifying A Binary Search Tree

---
## Content

Sometimes we might have a binary tree and want to verify whether it is organized as a binary search tree.  The naive algorithm — traverse the tree, checking at every node whether the node contains a value larger than the value at the left child and smaller than the value on the right child — does not always work. Consider the following tree:

![verifybst](https://img.enkipro.com/7c8b9ec3c166ca7d190807df1e37e575.png)

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

We should pass in the smallest-possible value for `minKey` and the largest-possible value `maxKey` initially.

**Note:** What those values are depends on the type of information being stored in the BST and the specific language in which the BST is being implemented. If we were to implement the BST in C and store integers, then we might pass in the `INT_MIN` and `INT_MAX` constants as initial values. If we were to implement it in JavaScript and store numerical values, then we might pass in `-Infinity` and `Infinity` as initial values.

---
## Practice

Is the following a *binary search tree*?
```
          15
        /    \
       10    18
      /     /  \
     3     20  28
```

???

* No
* Yes

---
## Revision

A node in a binary search tree has to be

???

* larger than any node in its left subtree and smaller than any node in the right one.
* larger than its left child and smaller than its right one.
* larger than the root and smaller than the right-most leaf.
* larger than any node in its right subtree and smaller than any node in the left one.


