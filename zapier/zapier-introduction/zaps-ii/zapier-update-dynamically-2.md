---
author: kapnobatai136
category: feature
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

# Update Dynamically 2


---

## Content

In this case, you want to set the step such that every time the zap runs:

- if you have access to the base (the search step)
  - meaning that if the value found in the `Has Access` column is `Yes`
- your number of access days will be updated to 7 (the update step)
  - the corresponding cell in the `# of days` column will be updated to `7`

Create the search step first as this needs to be completed before the update.

![search-step-fields](https://img.enkipro.com/5d1aa922681912c4c6c345c914135ac0.png)

As you can see, all it needs to do is look in the `Has Access` column for a `Yes` value. If that is correct, it can go ahead and update the corresponding cell:

![action-step-fields](https://img.enkipro.com/b61453919e9333ea96bb40123d62242d.png)

Because of how to search step was created (starting from the update step), the `Row` and `Custom Value for Row ID` fields are already completed. All that is left to do is set the `# of days` to `7` (or any other number that you wish).


---

## Practice

Which of the following is not a possible option in Zapier?

???

- Destroy data.
- Search for data.
- Update data.


---

## Revision

To dynamically change data for every iteration of the zap, you need to add a ??? step.

- search
- find
- filter
