# inserting-data-into-a-heap-with-the-upheap-operation
author: jfarmer

levels:

type: normal

category: how to

---
## Content

How do we insert information into a heap efficiently?  Consider the following (binary) max-heap:

```text
    100
   /   \
  19   36
 /
17
```

Remember, that we need to maintain two properties of the tree to ensure we have a heap:

1. The tree is a *complete* binary tree
2. The parent node of a key is always greater than or equal to the key itself

To respect property (1), we will insert the new data in the correct spot.  To respect property (2), we will move around nodes in the tree after inserting the new data in the correct spot.

Let's say we want to insert the key `120`.  We would start by inserting it in the next available spot, like so:

```text
    100
   /   \
  19   36
 /  \
17  120
```

But now the tree no longer satisfies the property (2) — the heap property — since `120` is greater than `19`.  To ensure that we respect the heap property, we compare `120` to its parent and swap the two if `120` is greater.  We continue doing this until `120` is in the root position or is less than its parent node.

This operation is sometimes called the `shift-up` or `upheap` operation.  Here's how it would look in this instance

Since `120` is greater than `19`, we would swap the two:

```text
    100
   /   \
  120   36
 /   \
17   19
```

However, `120` is still greater than `100`, so we must swap those two keys as well:

```text
    120
   /   \
  100   36
 /   \
17   19
```

The tree is now a heap again!


---
## Practice

Where will the next node be inserted in the heap?
```
        50
      /    \
    20      45
  /    \   /   \
 15    18  C    D
  A     B      
???
```
*`C`
*`A`
*`B`
*`D`

---
## Revision

During *upheap* operation, the child swaps places with its parent if its value

???.
*is larger than the parent's
*is smaller than the parent's
*is equal to the parent's
*is the smallest in the whole heap