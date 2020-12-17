---
author: Stefan-Stojanovic

type: normal

category: how to

links:
  - '[IMPORTRANGE](https://support.google.com/docs/answer/3093340){documentation}'

---

# =IMPORTRANGE()

---
## Content

The `=IMPORTRANGE()` function is used to import a specific range of cells from a specified spreadsheet.

The syntax is:
```plain-text
=IMPORTRANGE(spreadsheet_url, range_string)
```

The `spreadsheet_url` is the `URL` of the sheet you want to import the data from.

You can either add the `URL` directly into the function and enclose it in quotation marks or add the `URL` in an empty cell and reference that cell instead.

```plain-text
=IMPORTRANGE(
  "https://docs.google.com/spreadsheets/d/1hDko_Vftt-euxnk0ePxu4s92r6dQY8AGvKJ0artq3oY/edit?usp=sharing", 
  range_string
)

// URL placed in cell A3
=IMPORTRANGE(A3, range_string)
```

The `range_string` is the range of cells in the specified sheet you want to import.

The syntax for the `range_string` is:

```plain-text
"sheet_name!range"
```

The `sheet_name` is optional. If excluded, the function will import from the first sheet of the specified spreadsheet.

The `range` part is required.

Whether you use just the `range` or both, you have to enclose them in quotation marks.

```plain-text
=IMPORTRANGE(A1,"Sheet1!A1:D99")

=IMPORTRANGE(A1,"A1:D99")
```

---
## Practice

Which of the following is not true regarding the `IMPORTRANGE()` function?

???

- You cannot import more than 50 cells at a time.
- You can manually add a link in quotation marks or reference a cell with a link when importing with IMPORTRANGE.
- This function is used to import a specific range of cells from a specified spreadsheet.
