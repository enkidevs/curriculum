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

# Zapier Data


---

## Content

Until now, we have only used simple actions in our zaps which enabled *reacting to data changes* and *sending messages*. Another popular Zapier application is *finding data* and *using it at a later point in time*.

We have somewhat done this already when we used the *filter step* to verify that someone has actually gained access to our base. Essentially, we reacted to data changes only for specific values.

Extending on the previous example[1], what if we want to know who has gained access to our base? This is possible and, since we are using Google Sheets, we don't need to add any extra steps in the zap.

All that you would have to do is go to the Slack step. In the `Message Text` box you'll have access all the information related to any row change seen in the linked spreadsheet.

![gif-of-data](https://img.enkipro.com/90680a1d2f923084e64502d4d124b29c.gif)

![image-of-completed-data](https://img.enkipro.com/936b5a4e98e90a855f51334425e4fd5f.png)

To access data from previous steps, click on the `+` button on the right side of the field, and Zapier will show you all the data that you can use.


---

## Practice

With Zapier, you **can't**:

???

- Use it as a database.
- Find data in an app and use it at a later time.
- Monitor data and react to changes.
- Send messages.


---

## Revision

Say that you have a Google Sheets step followed by a Slack step. To include data from the spreadsheet, you need to add it from ???.

- the Slack step
- the Google Sheets step


---

## Footnotes

[1:Previous Example]

The previous example refers to the zap that sent a Slack message every time a Google Sheets record was created or updated:

![previous-example](https://img.enkipro.com/50de0285a6aa665f7ab1ee83e0c3a152.png)
