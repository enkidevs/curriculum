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

A **tree** is the abstract data type that can store elements *hierarchically* (non-linearly). Every element other than the *root* has a **parent** element and zero or more **children** elements. The **root** can only have children.

Consider the following tree, whose root node is *A*:

![treeds](https://img.enkipro.com/f045c18b375abec029d07c6fc05a7df7.png)

For example, a data structure that implements the *Tree* ADT is LinkedList, whose nodes have at most one child.

One of the most intuitive multilayered data structure representation is the *family tree*: a common ancestor, that has one or more children, that have zero, one or more children of their own etc. up to their last off-springs.

The nodes in a family tree have a value and a list of references to their children. The group formed by these nodes is called a **linked tree**.

More formally, a **linked tree T** is a set of **nodes** having a **parent-child** relationship:
- If *T is non-empty*, it must have a node, called *root*, without a parent.
- Every *node* other than the root has an unique parent *w*; those nodes are the children of *w*.

A tree is **ordered** if there is a *linear* relation among the *nodes on each level*. The way a book is structured exemplifies this:
- The actual document, the book, is the *root*.
- The next level is occupied by each part of the book (tPreface, Part A, Part B).
- The following level contains the *chapters* in each part (1,2,3).
- The chapters' children are the *subchapters* (1.1,1.2,1.3).

And so on and so forth:
![booktree](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22350%22%20cy%3D%2251%22%20r%3D%2235%22%2F%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22500%22%20cy%3D%22136%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22319.995117%22%20y%3D%2258%22%3EBook%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22200%22%20cy%3D%22136%22%20r%3D%2235%22%2F%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22350%22%20cy%3D%22136%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2224%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22322%22%20y%3D%22136%22%3EPart%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22343%22%20y%3D%22161%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22390%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22359.995117%22%20y%3D%22231%22%3ECh.1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2224%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22172%22%20y%3D%22136%22%3EPart%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22193%22%20y%3D%22161%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22200%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22169.995117%22%20y%3D%22231%22%3ECh.2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22295%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22264.995117%22%20y%3D%22231%22%3ECh.3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22105%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2274.9951172%22%20y%3D%22231%22%3ECh.1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2224%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22472%22%20y%3D%22136%22%3EPart%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22493%22%20y%3D%22161%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22500%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22469.995117%22%20y%3D%22231%22%3ECh.1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20cx%3D%22595%22%20cy%3D%22221%22%20r%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22564.995117%22%20y%3D%22231%22%3ECh.2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M319.5%2069.5l-91.62647%2044.817295M174%20160l-45%2036m98-38l43%2038m80-25l21%2020m11-122l86.450719%2050.262046M350%2086v15m-151%2070v15m300-15v15m26-26l46%2034%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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


