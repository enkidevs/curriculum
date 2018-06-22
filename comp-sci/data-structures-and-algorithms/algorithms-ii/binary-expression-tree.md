---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know



parent: parsing-reverse-polish-notation

---

# Binary Expression tree

---
## Content

**Binary expression tree** is a specific kind of binary tree that represents a algebraic (*2+3×5*) or boolean (*¬(q ∧ v)∧q*) expressions.

Each node of the tree will hence have zero, one or two children.

The BET of **(5×10+9)/(3-2)** is:

![bes](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M343%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C366.560339%2021.6072003%20355.551767%2015%20343%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM203%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C226.560339%20121.6072%20215.551767%20115%20203%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm-93%2090c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C133.560339%20211.6072%20122.551767%20205%20110%20205c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20d%3D%22M300%20274c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C323.560339%20210.6072%20312.551767%20204%20300%20204c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M483%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C506.560339%20121.6072%20495.551767%20115%20483%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22470.988281%22%20y%3D%22164%22%3E-%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22190.998047%22%20y%3D%22164%22%3E%2B%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22287.998047%22%20y%3D%22253%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M580%20275c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C603.560339%20211.6072%20592.551767%20205%20580%20205c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22567.998047%22%20y%3D%22254%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M388%20275c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C411.560339%20211.6072%20400.551767%20205%20388%20205c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22375.998047%22%20y%3D%22254%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2297.9980469%22%20y%3D%22250%22%3Ex%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M50%20375c19.3299662%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.2625561-18.466673C73.5603395%20311.6072%2062.5517669%20305%2050%20305c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2238.9980469%22%20y%3D%22356%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M170%20375c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C193.560339%20311.6072%20182.551767%20305%20170%20305c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22145.996094%22%20y%3D%22356%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2236%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22332.198242%22%20y%3D%2263%22%3E%2F%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M318.305402%2076L225%20122.270754M369%2076l89.005263%2049.575516M135%20215l43.724368-39M229%20174l46%2041m233-40l47%2041m-140.743308.580114l43.164498-42.983252M86%20264l-36%2041m86-40l34%2040%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The leaves of the tree are operands, while the internal nodes contain operators. A node has one child its value is either unary minus operator (-7) or logical negation (¬).


In-order traversal[1] of the tree will return the infix notation. It is worth mentioning that each subtree should be enclosed in parentheses.

Pre-order traversal[2] will output the Polish notation, or prefix notation, of the expression, while the post-order traversal[3] will result in the Reverse Polish Notation, or postfix notation.

---
## Revision

The following binary expression tree evaluates to:
```
     ÷
   /   \
  +     -
 / \    |
3   9   3
```
???

* `-4`
* `4`
* `-3`
* `3`

---
## Footnotes
[1:In-order traversal]
Depth-first traversal in which the parent node is visited after the left child and before right child.

[2:Pre-order traversal]
Depth-first traversal in which the parent node is visited before visiting any of the children.

[3:Post-order traversal]
Depth-first traversal in which the parent node is visited after both children.
 
