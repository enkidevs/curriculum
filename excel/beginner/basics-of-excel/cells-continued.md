---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# Cells (Find and Replace)

---
## Content

Cells are essentially where all of your data goes. So finding and replacing mistakes should be easy.

Excel, both Google docs and Office Excel provide a "find and replace" feature.

This feature is very useful when you need to find and replace information anywhere in the workbook(all sheets included).

You can access this feature like so (highlighted in green):

![find-and-replace](https://img.enkipro.com/78878b3b7f955f8bbd13b8163a01c876.png)

Or by using the `ctrl + H` shortcut for Windows or `command + shift + H` for Mac OS. The shortcuts are the same for all versions of Excel.

### Find and Replace features

![find-and-replace-explained](https://img.enkipro.com/1493f74c87ed109043a7ea500daf06a8.png)

The `Find` tab is used to input whatever you want to find.

The `Replace with` tab is used to input what you want to replace with.

The `Search` tab has a drop-down menu and 4 checkboxes.

In the dropdown menu, you can select to search `All sheets`, `This sheet` or a `Specific range` of cells.

The 4 different checkboxes:
- `Match case` is used to specifically match the upper or lowercase of the value being searched for. For example, searching for "ABC" with this box checked will not find "abc".
- `Match entire cell contents` is used to find exactly what was inputted. For instance, searching for a cell with `100` won't find any cell that contains `1000`.
- `Search using regular expressions` is used for searching with Regular Expressions (will be discussed later on)
- `Also search within formulas` is used to search inside formulas (will be discussed in the Formulas workout)

### Example

Let's say we have a table with these 10 cells:
```
77
88
77
88
77
88
77
88
77
88
```

We can use the `find and replace` feature to, for instance, replace the first instance of `77` to be `100`, like so:

![find-and-replace-one](https://img.enkipro.com/5b9745748cd7f1708f56addd76d7a4e4.png)

As you can see in the image above, you get a small message saying what was replaced.

Or we can use the `replace all` button to replace all instances of `88` with `A`, like so:

**Note:** When you press `replace all` you get a popup window asking you to confirm your decision because some replacements of all matches could end up changing a big part of your data, which isn't always desirable or intended.

![find-and-replace-all](https://img.enkipro.com/51e09ad5093527daf14f2834b3e2b322.png)
