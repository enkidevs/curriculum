---
author: kapnobatai136

category: must-know

aspects:
  - introduction

type: normal

---

# Update Dynamically

---
## Content

Now that we have added a new column to our spreadsheet, we also want to populate it. With Zapier, you can search search for data, create new data or dynamically (on the go) update data.

Going back to our zap, let's add another step right at the end. It will also be a Google Sheets step, but this time we want to choose `'Update Spreadsheet Row'`.

You will now notice that there are now two options available for the `'Row'` field:
* manually entering a value (that is if you want to edit the same row every time)
* `'Add a Search Step'` (that is if you want to change which row is updated every time the zap runs)

Choosing to add a search step will, as expected, add a new step before the current one. By filling in the required fields you will create a constrain, and only if that constraint is true will the rows be updated. In our case we have made it such that every time the zap runs, if you have access to the base, your number of access days will be updated to 7. Here is how we have done it:

![step-fields](https://img.enkipro.com/5d1aa922681912c4c6c345c914135ac0.png)

---
## Practice

Which of the following is not a possible option in Zapier?

???

* Destroy data.
* Search for data.
* Update data.