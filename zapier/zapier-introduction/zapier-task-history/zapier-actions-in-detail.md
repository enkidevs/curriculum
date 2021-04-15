---
author: kapnobatai136
category: feature
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Task History Advanced


---

## Content

Looking over items in the task history is undoubtedly useful. Another useful extension of this view is the **detailed view** of each task run.

If you click on any of the actions seen in the history, a new detailed page will be opened. In here, you will see all the actions that were performed by your zap, with each having a more detailed view. 

Let's say we have added a new record to our spreadsheet that has `Wick` in the `Last Name` column. Here is what you will find in the task history:

![zaps-in-detail-1](https://img.enkipro.com/2175178a26b04235bd28151a49ee7ac5.png)

From top to bottom we can see that Zapier noticed a change in the spreadsheet, verifying that said changed passed our constraints and sent a message to slack.

![zaps-in-detail-2](https://img.enkipro.com/66da753eb36e07f4a3fb66c414dc5d97.png)

Continuing, we see that we create a new column, verify that the `Has Access?` column says `Yes`, and update the `# of days` column to 7.

Although the zap is working, we have already found some problems:

1. We are checking twice that the `Has Access?` column says `Yes`
2. For every successful zap, we create a new `# of days` column

It is good practice to check your zaps because you never know how you can improve your workflow even further.


---

## Practice

Clicking on a zap in the task history will:

???

- Open a detailed view of said zap.
- Rename said zap.
- Will delete zap from the task history.
