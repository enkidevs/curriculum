# inserting-data-into-a-binary-search-tree
author: jfarmer

levels:
	- basic

type: normal

category: must-know

---
## Content

To insert a new key into a BST, we zig-zag between the left and right children according to how the new key compares to the key at each node, and find the first empty leaf node where the new key fits.

That is, the new key is first compared with that of the root.  If its key is less than the root's, it is then compared with the key of the root's left child. If its key is greater, it is compared with the root's right child. This process continues, until the new node is compared with a leaf node, and then it is added as this node's right or left child (depending on how the new key compares).

Consider the following BST:

```text
       8
    /     \
   3      10
  / \       \
 1   6      15
      \    /
       7  13
```

Let's say we wanted to insert the key `4`.  To do so, the procedure would work as follows:

1. Is `4` greater than or less than `8`?  It's less than, so look at the left child.
2. Is `4` greater than or less than `3`?  It's greater than, so look at the right child.
3. Is `4` greater than or less than `6`?  It's less than, so look at the left child.
4. The left child is empty, so insert `4` to the left of `6`.

The final result is a BST that looks like this, with `4` highlighted with brackets:

```text
       8
    /     \
   3      10
  / \       \
 1   6      15
    / \    /
  [4]  7  13
```

## Order Dependence

You might have noticed that the shape of the BST depends on the order in which the data is inserted.  For example, if the data were all inserted from largest to smallest, we would wind up with what is essentially a sorted linked list.

---
## Practice

How many checks are required to find the right place to insert `9` in the following BST?
```
       7
     /   \
    3    10
  /  \  /  \
 1   4  8   13
???
```
*`4`
*`2`
*`3`
*`1`
*`5`

---
## Revision

How many checks are required to find the right place to insert `5` in the following BST?
```
       6
     /   \
    3    10
  /     /  \
 2     9   20
???
```
*`3`
*`2`
*`5`
*`1`
*`4`