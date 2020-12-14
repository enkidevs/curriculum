---
author: kapnobatai136
category: feature
type: normal
---

# Update Dynamically


---

## Content

Now that we have added a new column to our spreadsheet, we also want to populate it. With Zapier, you can search for data, create new data or dynamically (on the go) update it.

Going back to our zap, let's add another step right at the end. We want this step to update the value in our added column (`# of days`).

![zap-from-before](https://img.enkipro.com/f1192e72ad0916a6647391d323b7aa96.png)

It will also be a Google Sheets step, but this time we want to choose `Update Spreadsheet Row`.

You will now notice that there are now two options available for the `Row` field:

- manually entering a value (that is if you want to edit the same row every time)
- `Add a Search Step` (that is if you want to change which row is updated every time the zap runs)

![zapier-search-step](https://img.enkipro.com/2ffe7ded65989527f65486cebfc32da1.png)

Choosing to add a search step will add a new step before the current one (so that the search can be completed first). By filling in the required fields you will create a constrain, and only if that constraint is true will the rows be updated.

We'll take a look at how to set this up in the following insight.
 
