---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[The heap data structure](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Binary%20Heaps/heaps.html){website}'

parent: balanced-vs-unbalanced-binary-trees

---

# The Heap Data Structure

---
## Content

A *heap* is tree-based data structure designed to support a constant-time `find-max` (or `find-min`) operation in addition to efficient insertion of new elements and efficient removal of the maximum (or minimum) element.  They are frequently used to implement priority queues, where the elements are ordered by priority (or some other factor) rather then their insertion order.

A heap that supports the `find-max` operation is called a *max heap* while a heap that supports a `find-min` operation is called a *min heap*. The values in a heap are often called *keys* and must satisfy what is known as the *heap property*: for a max heap, the keys of parent nodes are always greater than or equal to those of the children and the highest key is in the root node. For a min heap, replace "greater than" with "less than" and "highest key" with "lowest key".

A common implementation of a heap is a *binary heap*, in which the trees are all complete binary trees. *Complete* means that every level of the tree is filled, except possibly the last level.  Here is a picture of a max heap as a complete binary tree:

![heapds](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M343%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C366.560339%2021.6072003%20355.551767%2015%20343%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM203%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C226.560339%20121.6072%20215.551767%20115%20203%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm-93%2090c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C133.560339%20211.6072%20122.551767%20205%20110%20205c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm190-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C323.560339%20210.6072%20312.551767%20204%20300%20204c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm183-89c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C506.560339%20121.6072%20495.551767%20115%20483%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22458.996094%22%20y%3D%22166%22%3E36%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22178.996094%22%20y%3D%22166%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22287.998047%22%20y%3D%22255%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M580%20275c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C603.560339%20211.6072%20592.551767%20205%20580%20205c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22567.998047%22%20y%3D%22256%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M388%20275c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C411.560339%20211.6072%20400.551767%20205%20388%20205c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22363.996094%22%20y%3D%22256%22%3E25%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2285.9960938%22%20y%3D%22256%22%3E17%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M50%20385c19.3299662%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.2625561-18.466673C73.5603395%20321.6072%2062.5517669%20315%2050%20315c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2237.9980469%22%20y%3D%22366%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M170%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C193.560339%20321.6072%20182.551767%20315%20170%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22157.998047%22%20y%3D%22366%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2236%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22310.594727%22%20y%3D%2264%22%3E100%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M318.305402%2076L225%20122.270754M369%2076l89.005263%2049.575516M135%20215l43.724368-39M229%20174l46%2041m233-40l47%2041m-140.743308.580114l43.164498-42.983252M74.7796749%20325.165787l11.0111739-60.087835m60.1528172%2060.546044l-10.932029-60.885952%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Finding the maximum element is easy — it's the root node — but storing the information in a tree with the heap property allows for `O(log n)`-time insertion and removal. We'll see how shortly.

If we were to store the same information in a sorted list we could have constant time `find-max` and constant-time removal[1], but `O(n)`-time insertion.

---
## Practice

What is the average insertion time in a *binary heap*?

???

* O(log n)
* O(n)
* O(log log n)
* O(sqrt(n))

---
## Revision

What operation should a *max heap* support?

???

* `find-max`
* `find-min`
* `sort`
* `get-min`

---
## Footnotes
[1:Constant time removal]

As heaps are data structures for which the minimal or maximal element is prioritized, constant-time removal refers to the removal of this particular element (which we can access in constant-time through the `find-max`/`find-min` functions).

Because of this property, priority queues are often implemented using heaps.
 
