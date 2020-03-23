---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

  - workout

links:

  - '[Tree data structure](http://www.cs.cmu.edu/~clo/www/CMU/DataStructures/Lessons/lesson4_1.htm){website}'

parent: graph-adt

---

# The Tree Data Structure

---
## Content

A **tree** is an abstract data type that can store elements *hierarchically* (non-linearly). Every element other than the *root* has a **parent** element and zero or more **children** elements. The **root** can only have children.

Consider the following tree, whose root node is *A*:

![treeds](https://img.enkipro.com/4e264ddca0d006f917fd2784dced716a.png)

For example, a data structure that implements the *Tree* ADT[1] is LinkedList[2], whose nodes have at most one child.

One of the most intuitive multilayered data structure representation is the *family tree*: a common ancestor has one or more children, who in turn have children of their own etc.

The nodes in a family tree have a value and a list of references to their children. The group formed by these nodes is called a **linked tree**.

More formally, a **linked tree T** is a set of **nodes** which have a **parent-child** relationship:
- If *T is non-empty*, it must have a node, called a *root*, without a parent.
- Every *node* other than the root has a unique parent *w*; these nodes are the children of *w*.

A tree is **ordered** if there is a *linear* relation among the *nodes on each level*. The way a book is structured exemplifies this:
- The actual document, the book, is the *root*.
- The next level is occupied by each part of the book (tPreface, Part A, Part B).
- The following level contains the *chapters* in each part (1,2,3).
- The chapters' children are the *subchapters* (1.1,1.2,1.3).

And so on and so forth:

![booktree](https://img.enkipro.com/80c15848eba8257d56620b059c830cf6.png)

It is worth mentioning that a *tree* is a special kind of graph, in which the edges have a direction (parent-child) and there are no cycles (acyclic).


### Tree ADT

A node may not necessarily reference its parent, but it has to contain a value to be meaningful.

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
* A tree can have more than one root node.

---
## Revision

Which of the following statements does apply to Tree data structures?

???

* The root node has no parents.
* The root node has to have at least 1 child.
* The root node cannot have more than 2 children.
* There is no relation between the nodes of a tree.

---
## Footnotes

[1:ADT]
Abstract Data Type, or ADT for short, represents a type (or class) for objects that have their behavior defined by a set of operations and a set of values. This means that the ADT only specifies what actions to take, not how these actions are implemented. Some examples include:
- Array ADT
- LinkedList ADT
- Stack ADT
- Queue ADT

[2:LinkedList]
A linear collection of data elements whose order is not given by their physical placement in memory, but each element points to the next. For more information check out the `'Intro to Data Structures'` mission.
