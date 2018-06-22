---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Working with tries](https://medium.com/algorithms/trie-prefix-tree-algorithm-ee7ab3fe3413){website}'

parent: o-logn-operations-for-heaps

---

# The Trie Data Structure

---
## Content

A **trie**, also know as *radix tree* or *prefix tree*, is an ordered tree structure that stores sets or arrays having one or more relations between the elements.

Unlike a *binary search tree*, an element of a trie isn't a *independent entity*, but more of a sequence of states following one another.

The best example that uses the trie data structure is the autocomplete function of smartphones: the entry node represents the empty character as you press space, then it gives suggestions of words (represented as leaves) that can be obtained extending the current character sequence (path between the current node and a leaf).

![trie](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20500%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M490%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22477.998047%22%20y%3D%22166%22%3EI%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M350%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C373.560339%20121.6072%20362.551767%20115%20350%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%22161%22%3Ec%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22166%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M140%20285c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C163.560339%20221.6072%20152.551767%20215%20140%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22115.996094%22%20y%3D%22266%22%3EAd%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M280%20285c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C303.560339%20221.6072%20292.551767%20215%20280%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22255.996094%22%20y%3D%22261%22%3Eca%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M350%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C373.560339%20321.6072%20362.551767%20315%20350%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2238%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22315.794434%22%20y%3D%22360%22%3Ecat%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M210%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20321.6072%20222.551767%20315%20210%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2238%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22175.794434%22%20y%3D%22360%22%3Ecar%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M280%20485c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C303.560339%20421.6072%20292.551767%20415%20280%20415c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22245.194336%22%20y%3D%22458%22%3Ecars%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M140%20485c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C163.560339%20421.6072%20152.551767%20415%20140%20415c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22105.194336%22%20y%3D%22458%22%3Ecare%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3E_%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M350.677448%2085.3023895l.200744%2030.2308945%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22260.498047%22%20y%3D%2292%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22325.498047%22%20y%3D%22110%22%3Ec%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22415.498047%22%20y%3D%2292%22%3EI%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22537.496094%22%20y%3D%22170%22%3E50%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M185%20175l-45%2040%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22140.498047%22%20y%3D%22192%22%3Ed%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325%20175l-44%2040%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22280.498047%22%20y%3D%22192%22%3Ea%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M255%20275l-44%2040m95-40l45%2040%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2238%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22119.196289%22%20y%3D%22360%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2238%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22394.196289%22%20y%3D%22360%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M185%20375l-45%2040m95-40l46%2040%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2258.097168%22%20y%3D%22458%22%3E19%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22327.298584%22%20y%3D%22458%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22215.298584%22%20y%3D%22293%22%3Er%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22332.298584%22%20y%3D%22293%22%3Et%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22140.298584%22%20y%3D%22393%22%3Ee%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2229%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22260.298584%22%20y%3D%22393%22%3Es%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

A node that has a *value associated* represents a word with a higher or lower chance to be picked by the autocomplete function.

Looking up data in a *trie* is fast; the worst case takes *O(m)*, where *m* is the length of the string, and you don't have to worry about two different words ending up in the same location (*collision*).

The drawback is that *tries* can take up a lot of space because they save each intermediate step. It is also hard to prevent adding long, meaningless sequences of characters to the trie.

They are also called *prefix trees* because a *pre-order traversal* would visit the nodes in *lexicographical order*.

---
## Revision

How long does searching for a word take?

???

* O(word's length)
* O(trie's size)
* O(word's length * trie's size)
* O(log n)

 
