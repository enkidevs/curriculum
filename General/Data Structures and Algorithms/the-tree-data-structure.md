# The Tree Data Structure
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

The **tree** is the abstract data type that can store elements *hierarchically* (non-linearly). Every element other than the *root* has a **parent** element and zero or more **children** elements. The **root** can only have children.

For example, a data structure that implements the *Tree* ADT is LinkedList, whose nodes have at most one child.


One of the most intuitive multilayered data structure is the *family tree*: a common ancestor, that has one or more children, that have zero, one or more children of their own, etc. up to the last off-springs.

The nodes in a family tree have a value and a list of references to their children. The group formed by these nodes is called a **linked tree**.


More formally, a **linked tree T** is a set of **nodes** having a **parent-child** relationship:
- If *T is non-empty*, it must have a node, called *root*, without a parent.
- Every *node* other than the root has an unique parent *w*; those nodes are the children of *w*.


A tree is **ordered** if there is a *linear* relation among the *nodes on each level*. The components of a book are organized this way:
- The actual document, the book, is the *root*.
- The next level is occupied by each part of the book (Preface, Part A, Part B).
- The following level contains the *chapters* in each part (1,2,3).
- The chapters' children are the *subchapters* (1.1,1.2,1.3).

And so on and so forth.

It is worth mentioning that a *tree* is a special kind of graph, in which the edges have a direction (parent-child) and there are no cycles (acyclic).


### Tree ADT

A node may not necessarily reference its parent, but it has to contain a value to be a meaningful.

A tree's *accessor methods* should be:
- `root()` : *Returns* the root node.
- `children(n)` : *Returns* a collection of children of node n.

And its *query methods* should be:
- `isInternal(n)` : *Returns* true if n has children.
- `isExternal(n)` : *Returns* true if n doesn't have children.
- `isRoot(n)` : *Returns* true if n is the root of the tree.


---
## Practice

Which of the following is true?

???
* A tree is a subtype of graph without cycles.
* A tree is an undirected graph.
* A graph is a subtype of a tree.
* A tree can have more than one node.

---
## Revision

Which of the following is true?

???
* The root node has no parents.
* The root node has to have at least 1 child.
* The root node cannot have more than 2 children.
* There is no relation between the nodes of a tree.
