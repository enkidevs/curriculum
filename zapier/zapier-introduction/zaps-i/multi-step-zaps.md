---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Multi-Step Zaps


---

## Content

We have previously mentioned that zaps are not limited to only two steps. Let's take the zap that we have previously created, and add another step.

Currently, the zap sends `A new person has gained access to your base!` when the `Has Access` row is changed or updated. The `Has Access` cell can say `Yes` or `No`, which means that changing the cell to `No` will still lead to the same message being sent.

Let's change this by adding a filter[1]. Press the `+` button between Google Sheets and Slack, choose `Filter by Zapier`, and change the fields such that the trigger will only happen if the change contains `Yes`.

Here is how you would do that:

![short-filter-example](https://img.enkipro.com/76ccb67902bf9a1b3e4a776d8511d6f0.png)

Success! You have added another step to your zap. All that is left to do is turning it back on, and you should now only receive a message when someone actually gets access to your base.

Note: To create multi-step zaps, you need to have a paid plan.


---

## Practice

Zapier can have ??? steps.

- an unlimited number of
- only two


---

## Revision

How many steps is Zapier **limited to**?

???

- 0
- 1
- 2
- 10


---

## Footnotes

[1:Filters]
In this insight we will briefly go over filters, but they will be explained in more detail in a later workout.
