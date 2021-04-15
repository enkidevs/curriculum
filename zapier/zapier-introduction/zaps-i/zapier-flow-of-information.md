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

# Flow of Information


---

## Content

When we were working with templates in the previous examples, you might've noticed that between the Google Sheets and Slack integration (or **steps**), there was a small `+` icon available.

What this is means is that you are not limited to using two applications (or the same application once).

Let's first understand what happens behind the scenes. In the zap we have previously created:

![previous-zap](https://img.enkipro.com/dd6ded782ca71a080338c67e893cf0c4.png)

1. Zapier monitors a Google Sheet
2. A change in said sheet triggers a Slack action
3. You receive a direct message on Slack

Think of Zapier as being really polite and respectful of the queue. It can't send a Slack message before the trigger, and the action is not triggered before the change.

In layman terms, information in Zapier flows from **top to bottom**.


---

## Practice

How does information flow in Zapier?

???

- From top to bottom.
- From bottom to top.
- From left to right.
- From right to left.


---

## Revision

What should be the order of the following steps in a zap?

??? Send a SMS.
??? Monitor a spreadsheet.

- 2
- 1
