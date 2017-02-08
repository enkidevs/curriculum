# big-o-cheat-sheet-for-date-structure-operations
author: mihaiberq

levels:
	- beginner
	- basic

type: normal

category: hack

---
## Content

-----------------**Time(Avg/Worst)**----------------|--**Space**-

---------**Access**--**Search**--**Insert**--**Delete**---|------------

---

**Array**---O(*1/1*)--O(*n/n*)--O(*n/n*)--O(*n/n*)---|---O(*n*)---
___
**Stack**---O(*n/n*)--O(*n/n*)--O(*1/1*)--O(*1/1*)--|---O(*n*)---

---
**Queue**---O(*n/n*)--O(*n/n*)--O(*1/1*)--(*1/1*)---|---O(*n*)---

---
**SLList[1]**-O(*n/n*)-O(*n/n*)-O(*1/1*)-O(*1/1*)--|---O(*n*)---

---
**DLList[2]**-O(*n/n*)-O(*n/n*)-O(*1/1*)-O(*1/1*)--|---O(*n*)---

---
**BSTree[3]**-O(*log/n*)-O(*log/n*)-O(*log/n*)-O(*log/n*)-|-------------------------------------------------------------|--O(n)--

---

---
## Footnotes

[1:SLList]
Singly-Linked List
[2:DLList]
Doubly-Linked List
[3:BSTree]
Binary Search Tree

*log* stands for *log(n)*.