---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: how to

---

# Cells (Find and Replace)

---
## Content

Cells are essentially where all of your data goes. This means that finding and replacing mistakes should be easy.

Most spreadsheet tools should have a feature used to find and replace data. To access this feature in Google Sheets, you would go to the `Edit` tab and select `Find and replace`. You can use this feature to find and replace information anywhere in the workbook (all sheets included).

![find-and-replace](https://img.enkipro.com/78878b3b7f955f8bbd13b8163a01c876.png)

Another quick way of accessing `Find and replace` is by using a keyboard shortcut. In Windows you would have to press `CTRL + H` while in Mac OS you would have to press `COMMAND + SHIFT + H`.

### Using `Find and replace`

![find-and-replace-explained](https://img.enkipro.com/1493f74c87ed109043a7ea500daf06a8.png)

The `Search` tab has a drop-down menu with four checkboxes. In here you can select to search `All sheets`, `This sheet` or a `Specific range` of cells.

The 4 different checkboxes do the following:
- `Match case` is used to specifically match the upper or lowercase of the value being searched for. For example, searching for `"ABC"` with this box checked will not find `"abc"`.
- `Match entire cell contents` is used to find exactly what was inputted. For instance, searching for a cell with `100` won't find any cell that contains `1000`.
- `Search using regular expressions` is used for searching with regular expressions (will be discussed later on)
- `Also search within formulas` is used to search inside formulas (will be discussed in the `Formulas` mission)

### Example

Let's say we have a table that contains only this column:

| Column |
|:------:|
|   77   |
|   88   |
|   77   |
|   88   |
|   77   |
|   88   |
|   77   |
|   88   |
|   77   |
|   88   |

We can use the `Find and replace` feature to replace the first instance of `77` with `100`, like so:

![find-and-replace-one](https://img.enkipro.com/5b9745748cd7f1708f56addd76d7a4e4.png)

As you can see, you get a small message saying what was replaced.

You can also use the `Replace all` button to change all instances of `88` to `A`:

![find-and-replace-all](https://img.enkipro.com/51e09ad5093527daf14f2834b3e2b322.png)

**Note:** When you press `Replace all` you get a popup window asking you to confirm your decision. This is because some replacements could end up changing a big part of your data, which isn't always desirable or intended.