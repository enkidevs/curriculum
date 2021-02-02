---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[Xpath Cheatsheet](https://devhints.io/xpath){documentation}'
  - '[IMPORTXML](https://support.google.com/docs/answer/3093342){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# IMPORTXML


---

## Content

The `=IMPORTXML()` function is used to import various data from XML, HTML, CSV, TSV, RSS or ATOM XML feeds to your spreadsheet.

The syntax is:

```plain-text
=IMPORTXML(url, xpath_query)
```

The `url` is the URL of the XML page. The protocol (e.g. `https://`) must be included in the URL.

You can either add the URL directly into the function and enclose it in quotation marks or add the URL in an empty cell and reference that cell instead.

```plain-text
=IMPORTXML(
  "https://stackoverflow.com/questions/11227809/why-is-processing-a-sorted-array-faster-than-processing-an-unsorted-array", 
  xpath_query
)

// URL placed in cell A1
=IMPORTXML(A1, xpath_query)
```

The `xpath_query` is a sequence of built-in functions that can be used to navigate different nodes in an `XML` document.

These nodes are stored like path expressions. They look similar to how traditional file systems organize folders.

![tfs](https://img.enkipro.com/c79861aea3dcb932fcca20bb4c1e2ea7.png)

For a list of Xpath functions, check the *Learn more* section.

![importxml](https://img.enkipro.com/d9d13c7c46e4db6639b1a783dd82a9db.gif)

In the example above, we have imported all the links from a StackOverflow question.


---

## Practice

What is the syntax for `=IMPORTXML()`?

```plain-text
=IMPORTXML(???)
```

- url, xpath_query
- url - xpath_query
- xpath_query, url
- xpath_query - url
