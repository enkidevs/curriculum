---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sorting Data


---

## Content

Yet another useful feature that Airtable has is **sorting data**. Similar to filters, you can create new views in which certain fields are sorted, or you can apply a sorting rule to an existing view.

When paired together with filtering, personalized views of the same data can be created. One popular example application can be seen on a table that contains project related tasks.

Consider that this table has a `Task Name`, a `Lead` (person responsible for task), and a `Priority` field. Because there is more than one task per person, each with different priorities, you might want to create a personalized view for each `Lead`. Consider the following data:

![sample-table-data](https://img.enkipro.com/bfce634624b751bcdc6fec387641a39b.png)

For this insight, let's create a personalized view for `Catalin`. This view should only display records that have her as a `Lead`, and sort the tasks by their priority (descending, we want him to do the most important tasks first).

Start off by creating a filter that says `Where Lead is Catalin`. Now, sort the `Priority` column in descending order.

As a last step, you can rename the view by either right clicking on `Grid view` or by clicking the `...` button (the far right button on the toolbar). We renamed this view `Catalin's view`. 


---

## Practice

Sorting and filtering can be used for both ??? and ???.

- editing a current view
- creating a new view
- deleting a current view
- updating an old view
