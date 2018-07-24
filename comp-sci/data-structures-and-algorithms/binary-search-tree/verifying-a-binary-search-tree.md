---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to


links:

  - '[Validating a BST](http://stackoverflow.com/questions/499995/how-do-you-validate-a-binary-search-tree){website}'

parent: the-binary-search-tree-data-structure

---

# Verifying A Binary Search Tree

---
## Content

Sometimes we might have a binary tree and want to verify whether it is organized as a binary search tree.  The naive algorithm — traverse the tree, checking at every node whether the node contains a value larger than the value at the left child and smaller than the value on the right child — does not always work. Consider the following tree:

![verifybst](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M349%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C372.560339%2021.6072003%20361.551767%2015%20349%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM209%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C232.560339%20121.6072%20221.551767%20115%20209%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm180%20100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C412.560339%20221.6072%20401.551767%20215%20389%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm100-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C512.560339%20121.6072%20501.551767%20115%20489%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22464.996094%22%20y%3D%22164%22%3E30%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22184.996094%22%20y%3D%22167%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22376.998047%22%20y%3D%22264%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M599%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C622.560339%20222.6072%20611.551767%20216%20599%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22574.996094%22%20y%3D%22267%22%3E40%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22324.996094%22%20y%3D%2266%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M324.305402%2076L231%20122.270754M374%2075l89.005263%2049.575516M514%20175l60.148477%2050.16054M415%20225.78497L464.504468%20175%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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

 
