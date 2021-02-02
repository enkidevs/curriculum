---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[IMPORTHTML](https://support.google.com/docs/answer/3093339){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# =IMPORTHTML()


---

## Content

The `=IMPORTHTML()` function is used to import data from a table or list within an HTML page.

The syntax is:

```plain-text
=IMPORTHTML(url, query, index)
```

The `url` is the URL of the webpage you want to import the data from. The protocol (e.g. `https://`) must be included in the URL.

You can either add the URL directly into the function and enclose it in quotation marks or add the URL in an empty cell and reference that cell instead.

```plain-text
=IMPORTHTML(
  "https://www.w3schools.com/html/html_tables.asp", 
  query, 
  index
)

// URL placed in cell A2
=IMPORTHTML(A2, query, index)
```

The `query` is either "list" or "table". This is dependant on the structure of the data within the webpage.

The `index` starts at 1. This is used to identify the table or list from the HTML source data.

> 💡 If the website has a table and a list with index 1, both will be imported.

![importhtml](https://img.enkipro.com/9f227c4cb224eb379f4b6abc21131782.gif)


---

## Practice

In which order do you write the `query`, `index`, and `url` in the `=IMPORTHTML()` function?

```plain-text
=IMPORTHTML(???, ???, ???)
```

- url
- query
- index
