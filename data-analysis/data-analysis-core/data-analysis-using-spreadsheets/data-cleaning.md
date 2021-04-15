---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Organize Your
    Spreadsheets](https://towardsdatascience.com/organize-your-spreadsheets-for-data-analysis-and-visualization-b1985a31523a){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Cleaning


---

## Content

To make spreadsheets a useful tool for data analysis, you first need to **organize the data inside** the sheets.

You should keep your raw source data in one tab, untouched. Then in one or several other tabs, have the views and analysis of the original data.

If your raw data has already been tampered with and you can't download it again, follow these steps to revert it back to a raw state:

1. **Unpretty your spreadsheets**

- Remove merged cells as these can’t be used in pivot tables and are not well supported by external tools
- Remove multi-line headers
- Remove titles, formatting, file version, date and authors (use the file history and versioning for that)

2. **Untidy your data**

- Each row must represent one unaggregated measure
- Each cell must contain only one dimension or measure
- Each column must have a unique name

### More Tips

Make sure each column has the correct **data type** - i.e. currency as Currency, dates as Date/Time.

![Google Sheets Data Type Icon](https://img.enkipro.com/69da577cfba049dce0ac0f10f60d9b5a.png)

Clicking on this icon gives you several data types to choose from.

If you're using data that hasn't been automatically split into separate columns, then you can click on `Data > Split text to columns` and choose a relevant column delimiter.

**Vlookups** will be your best friend when pulling data from other sources into your main data sheet. 

Imagine we have a spreadsheet with product information.

We want to add information, such as the number of units sold, from another sheet into a new column on the original sheet. 

A `vlookup` could be used to look up *matching criteria* in this other data set, and return the necessary information about that item.

In this case, the matching criteria would be the name or ID of the product.


---

## Practice

What can we use to pull information from one data set into another?

???

- Vlookups
- Data Type
- Merged Cells
- Raw Data


---

## Revision

When working with raw data, each row should represent one unaggregated measure.

???

- True
- False
