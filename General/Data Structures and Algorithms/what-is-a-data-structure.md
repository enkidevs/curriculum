# What Is a Data Structure?
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

A **data structure** is a particular pattern for organizing information in order to make interacting with that information in the ways we want less expensive.


If this is unclear, let's fall back to an example: *clothes in an wardrobe*. Usually, there are two types of people:
-  Those who fold their clothes and **take their time** arranging them into the wardrobe, making it much **easier to pick** one of those.
-  Those who **throw their clothes** into a pile and **deal with finding** a specific piece of clothing when they need it.

Both are valid way of doing laundry. The first one requires more work up-front, but less when it comes to using them. The second one takes less time when it comes to storing them, but makes the *operation* of finding clothes in the morning more challenging.

This is the trade-off you have to think about when you decide which data structure to use: what is the operation I want to take advantage of?

Another example: consider a list of names written down alphabetically in a notebook. It is easy to find a name in the alphabetized list, but adding a new name to the list in the correct spot is time consuming.

Conversely, it is time consuming to find a name in the unalphabetized list, but easy to add a new name.

We might describe the respective *pattern* of information in these two lists as a "sorted list" and an "unsorted list".

Later on, you will be able to distinguish what data structure each example represents and how to use it efficiently.

Enki omg:

![alt description](%3Csvg%20height%3D%22auto%22%20viewBox%3D%220%200%20400%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20color%3D%22%239A57C1%22%20style%3D%22background%3A%232C3137%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M103%20110c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM283%20110c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM283%20270c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM103%20270c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Cpath%20d%3D%22M103%20179.5v-60M106%20130.3l-3-10.8-3%2010.8M283%20122v60M280%20171.2l3%2010.8%203-10.8M155%2070h80M224.2%2073l10.8-3-10.8-3M234%20230h-80M164.8%20227l-10.8%203%2010.8%203%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2296.999%22%20y%3D%2278%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22276.64%22%20y%3D%2278%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2296.999%22%20y%3D%22238%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22278.999%22%20y%3D%22238%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M142.5%20106.5l103.467%2086.715M235.763%20188.577l10.204%204.638-6.35-9.236M141%20192.82L245.21%20107M238.78%20116.18l6.43-9.18-10.243%204.55%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Svg omg:

![test.svg](%3Csvg%20height%3D%22auto%22%20viewBox%3D%220%200%20400%20300%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20color%3D%22%239A57C1%22%20style%3D%22background%3A%232C3137%22%3E%3Ctitle%3EArtboard%3C/title%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M103%20110c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM283%20110c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM283%20270c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040zM103%20270c22.09%200%2040-17.91%2040-40s-17.91-40-40-40-40%2017.91-40%2040%2017.91%2040%2040%2040z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22/%3E%3Cpath%20d%3D%22M103%20179.5v-60M106%20130.3l-3-10.8-3%2010.8M283%20122v60M280%20171.2l3%2010.8%203-10.8M155%2070h80M224.2%2073l10.8-3-10.8-3M234%20230h-80M164.8%20227l-10.8%203%2010.8%203%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22/%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2296.999%22%20y%3D%2278%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22276.64%22%20y%3D%2278%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2296.999%22%20y%3D%22238%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20font-family%3D%22RobotoMono-Bold%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22bold%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22278.999%22%20y%3D%22238%22%3E4%3C/tspan%3E%3C/text%3E%3Cpath%20d%3D%22M142.5%20106.5l103.467%2086.715M235.763%20188.577l10.204%204.638-6.35-9.236M141%20192.82L245.21%20107M238.78%20116.18l6.43-9.18-10.243%204.55%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22/%3E%3C/g%3E%3C/svg%3E)

---
## Revision

What is a data structure?

???
* A pattern for organizing information.
* A pattern for sorting information.
* A pattern for inserting information.
* An array of information.
