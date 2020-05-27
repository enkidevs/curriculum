---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: how to

links:
  - '[sample-spreadsheet-files](https://www.learningcontainer.com/sample-excel-data-for-analysis/){website}'
  

---

# Building out your Pivot table

---
## Content

In the previous insight we have added our desired data sets in the `Rows` field. Now, we can further sort and modify our data.

The other 2 fields in the editor are the `Values` and `Filters` fields.

The `Values` field is used to summarize data. You can count, perform an average, min, max, median, sum and more.

The `Values` field performs different calculations from the source data and creates new unique values. Unlike in the `Rows` and `Columns` fields where the table displays and groups the source data, the values from the `Values` field are new and you can use the same data sets to perform different calculations at once.

We are going to sum our `Sales` data in the `Values` field.

![sum-sales](https://img.enkipro.com/2dde949a6ab9b2c806924e292344bd1b.png)

The table now looks like this:

![current](https://img.enkipro.com/b142b39c1dccaa57c93ea505f1564dcf.png)

Currently, our pivot table shows the `SUM of Sales` for each `Product` per `Category`.

We can simplify the table and remove the `Product` data from the `Rows` field. Now we have a `SUM of Sales` for each `Category`.

![with-pivot](https://img.enkipro.com/828a881c1686f7242757f73199461abe.png)

With just the `SUM of Sales` and the `Category` fields, we can anylize thousands of cells filled with data in just a couple of cells.

The last field in the `Pivot table editor` is the `Filters` field.

The `Filters` field can be used to include/exclude data from the pivot table. We can filter by values or by condition.

We can for instance, add a filter by values to only inlcude the `Produce` and `Seafood` `Category`.

To do this, we need to add a filter for the `Category` data, deselect all the values we don't want and select the ones we want.

![filter](https://img.enkipro.com/b789271fd39e28c38e0e8a8dade37a14.png)

Now our table will look like this:

![end-table](https://img.enkipro.com/c9149f996529e023f916ec9f0f9c2dc4.png)


---
## Practice

??? is for including/excluding data from the pivot table.

??? is performing calculations on values and displaying the result in a new column/row.

* The Filters editor field
* The Values editor field
* The Customize editor field
