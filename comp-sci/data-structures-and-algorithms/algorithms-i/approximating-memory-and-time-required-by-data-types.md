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

  - '[What is an algorithm?](http://www.bbc.co.uk/education/guides/z22wwmn/revision){website}'
  - '[The Big-O notation](https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/){website}'

parent: node-height-and-depth

---

# Approximating Memory and Time required by Data Types

---
## Content

One of the main reasons of having multiple data structures is specialization. In the case of an *Array*, inserting an element requires all the elements to the right of the new one to be moved (**shifted**) one position.

In contrast, inserting an element into a *LinkedList* requires changes to the nodes next to the new one only.

The question comes to mind: "What data structure works best if the *main* operation I will perform is *insertion*?"

Intuitively, the answer would be *LinkedList*, which is also the correct one.

Using an Array, I would potentially need to shift **n elements** to the right, if I insert a new element at **index 0**. Here's an example:

![arraybefore](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23FFF%22%20d%3D%22M176%20174.69461v97l102.208522-.135551v-97.74367L278.255844%20173h-102.02413%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2275%22%20y%3D%2271%22%3EInsert%2010%20at%20index%201%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M75%20173h550v100H75z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2297.4951172%22%20y%3D%22240%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22213.497559%22%20y%3D%22240%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22316.497559%22%20y%3D%22240%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22417.497559%22%20y%3D%22240%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M278%20175v97m102-97v97m102-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2280%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22529.496094%22%20y%3D%22248%22%3E%E2%80%A6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M126%20125v41m-3-10.8l3%2010.8%203-10.8m99-30.2v41m-3-10.8l3%2010.8%203-10.8m99-32.2v41m-3-10.8l3%2010.8%203-10.8m99-28.2v41m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22116.15277%22%20y%3D%22109%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22220.15277%22%20y%3D%22109%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22322.15277%22%20y%3D%22109%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22424.15277%22%20y%3D%22109%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

And the array after insertion:

![arrayafter](%3Csvg%20width%3D%22100%25%22%20width%3D%22700%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23FFF%22%20d%3D%22M176%20127.69461v97l102.208522-.135551v-97.74367L278.255844%20126h-102.02413%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M75%20125h550v100H75z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2297.4951172%22%20y%3D%22192%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22315.497559%22%20y%3D%22192%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.495117%22%20y%3D%22192%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22417.497559%22%20y%3D%22192%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22519.497559%22%20y%3D%22192%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M278%20127v97m102-97v97m102-97v97m102-97v97M126%2077v41m-3-10.8l3%2010.8%203-10.8M228%2077v41m-3-10.8l3%2010.8%203-10.8M330%2075v41m-3-10.8l3%2010.8%203-10.8M280%20237h61m-10.8%203l10.8-3-10.8-3M432%2077v41m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22116.15277%22%20y%3D%2261%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22220.15277%22%20y%3D%2261%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22322.15277%22%20y%3D%2261%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22424.15277%22%20y%3D%2261%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M534%2075v41m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-LightItalic%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22526.15277%22%20y%3D%2259%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22589.997559%22%20y%3D%22202%22%3E%E2%80%A6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2227%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22196.480225%22%20y%3D%22265%22%3EMove%20everything%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Using a LinkedList, the time needed to insert a new node will be **constant** in relation to the size of the list. Consider the following linked list:

![listbefore](%3Csvg%20width%3D%22100%25%22%20width%3D%22700%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M60%2068h100v100H60z%22%2F%3E%3Cpath%20d%3D%22M88%2069v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2297.0898438%22%20y%3D%22129%22%3EX%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M220%2068h100v100H220z%22%2F%3E%3Cpath%20d%3D%22M248%2069v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22260.089844%22%20y%3D%22129%22%3EZ%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M380%2068h100v100H380z%22%2F%3E%3Cpath%20d%3D%22M408%2069v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22420.089844%22%20y%3D%22129%22%3EM%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M540%2068h100v100H540z%22%2F%3E%3Cpath%20d%3D%22M568%2069v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22580.089844%22%20y%3D%22129%22%3ER%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M350%20176v-26m3%2010.8l-3-10.8-3%2010.8%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M307%2096h89m-10.8%203l10.8-3-10.8-3M146%2096h89m-10.8%203l10.8-3-10.8-3m81.8%2046h89m-78.2%203l-10.8-3%2010.8-3M146%20139h89m-78.2%203l-10.8-3%2010.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M299%20184h100v100H299z%22%2F%3E%3Cpath%20d%3D%22M327%20185v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22339.089844%22%20y%3D%22247%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M386%20212h89m-10.8%203l10.8-3-10.8-3M225%20255h89m-78.2%203l-10.8-3%2010.8-3M40%20139h35m-24.2%203L40%20139l10.8-3m414.2%203h89m-78.2%203l-10.8-3%2010.8-3M465%2096h89m-10.8%203l10.8-3-10.8-3m82.8%203h35m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2260.4604492%22%20y%3D%2243%22%3EInsert%20A%20after%20node%20Z%3A%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

And the list afterwards:

![listafter](%3Csvg%20width%3D%22100%25%22%20width%3D%22700%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M33%2057h100v100H33z%22%2F%3E%3Cpath%20d%3D%22M61%2058v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2270.0898438%22%20y%3D%22118%22%3EX%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M174%2057h100v100H174z%22%2F%3E%3Cpath%20d%3D%22M202%2058v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22214.089844%22%20y%3D%22118%22%3EZ%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M300%2057h100v100H300zm126-1h100v100H426z%22%2F%3E%3Cpath%20d%3D%22M452%2057v98m46-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22466.089844%22%20y%3D%22117%22%3EM%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M566%2056h100v100H566z%22%2F%3E%3Cpath%20d%3D%22M594%2057v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22606.089844%22%20y%3D%22117%22%3ER%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M256%2084h60m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M119%2085h70m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M382%20127h60m-49.2%203l-10.8-3%2010.8-3%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M119%20128h70m-59.2%203l-10.8-3%2010.8-3M328%2058v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22340.089844%22%20y%3D%22120%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M382%2084h60m-10.8%203l10.8-3-10.8-3M256%20127h60m-49.2%203l-10.8-3%2010.8-3%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M13%20128h35m-24.2%203L13%20128l10.8-3m487.2%202h70m-59.2%203l-10.8-3%2010.8-3M511%2084h70m-10.8%203l10.8-3-10.8-3m81.8%203h35m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-2.25%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22170.463379%22%20y%3D%22227%22%3E4%20references%20changed%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We can say that:
- *For an Array* with n elements, the worst-case insertion scenario requires `n operations` to complete.
- *For a LinkedList* with n elements, the worst-case insertion scenario takes approximately `1 operation` to finish.

This **worst-case** approximation is expressed using the `Big O`[1] notation. In other words, *Big O* is a relative representation of the complexity of an algorithm or of performing operations on a data structure.

For example, when talking about moving from end to end within an array, it makes sense to say that the number of operations is bounded by the number of items in the array, or `O(n)`. Moreover, the insertion operation is bounded by the same function, `O(n)`, as inserting at index 0 means performing additional *n* operations for moving all of the items to the right.

For comparison, visiting every node in a linked list is also a linear operation (`O(n)`). Inserting, however, does not depend on the size of the list, but on the number of the immediate neighbors, which is a constant relative to the size[2]. Therefore, the insertion operation is bounded by the constant function, `O(1)`.

---
## Practice

In an array, how many operations are required for the worst-case scenario deletion (removal of the element with index 0)?

???

* n
* 1
* log n
* n×n

---
## Revision

Which of the following operations is bounded by the constant function?

???

* LinkedList insertion
* Array insertion
* Array searching
* LinkedList searching

---
## Footnotes
[1:Big O]
Pronounced Big-Oh.

[2:LinkedList]
The number of nodes depends on the type of LinkedList used and on how many references each node holds.

For example, in a *SinglyLinkedList* you have to change 2 references, in a *DoublyLinkedList* you have to change 4 references, but, in the end, it **does not** depend on *the total number of nodes* in the list.
 
