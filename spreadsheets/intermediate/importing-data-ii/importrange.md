---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to

---

# IMPORTRANGE 

---
## Content

The `=IMPORTRANGE()` function is used to import a specific range of cells from a specified spreadsheet.

Syntax:
```plain-text
IMPORTRANGE(spreadsheet_url, range_string)
```

The `spreadsheet_url` is the `URL` of the sheet you want to import the data from.

You can either add the `URL` directly into the function and enclose it in quotation marks or add the `URL` in an empty cell and reference that cell instead.

```spreadsheet
IMPORTRANGE("https://docs.google.com/spreadsheets/d/1hDko_Vftt-euxnk0ePxu4s92r6dQY8AGvKJ0artq3oY/edit?usp=sharing", range_string)

// URL placed in cell A3
IMPORTRANGE(A3, range_string)

```

The `range_string` is the range of cells in the specified sheet you want to import.

The syntax for the `range_string` is:

```plain-text
"sheet_name!range"
```

The `sheet_name` is optional. If excluded, the function will import from the first sheet of the specified spreadsheet.

The `range` part is required. The `range` should be enclosed in quotation marks.

```spreadsheet
IMPORTRANGE(A1,"Sheet1!A1:D99")

IMPORTRANGE(A1,"A1:D99")
```

When using `IMPORTRANGE` for the first time, you may get a popup screen prompting you to grant permission. Anyone with access to the same spreadsheet will also gain access to use `IMPORTRANGE` for all the data in the same source spreadsheet.

> 💡 If the data you are trying to import is too large, you may get an error. Also, if you don't leave room for the imported data, the function will create an error similar to this one:

![error](https://img.enkipro.com/88bc7121bd091c91dc5843575169ba86.png)

Let's say we want to import this spreadsheet into our own.

![source-sheet](https://img.enkipro.com/b7b5b9b97218fd75b8279ee02679c6ad.png)

To do this, we have to add the `URL` and the `range` of cells.

![add-source-a1a27](https://img.enkipro.com/5ec709098b4a3a282388fc290968cb6a.gif)

> 💡 If the source spreadsheet is updated, the data you imported will get updated as well.

![update-source-update-import](https://img.enkipro.com/59d5756e1061d3f796c44f484a1a0d51.gif)


---
## Practice

Which of the following is not true regarding the `IMPORTRANGE()` function?

???

- You cannot import more than 50 cells at a time.
- If you update the source sheet, your import data will also update
- You can manually add a link in quotation marks or reference a cell with a link when importing with IMPORTRANGE
- This function is used to import a specific range of cells from a specified spreadsheet.