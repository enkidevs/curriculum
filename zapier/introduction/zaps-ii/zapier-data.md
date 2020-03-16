---
author: kapnobatai136

category: must-know

aspects:
  - introduction

type: normal

---

# Zapier Data

---
## Content

Until now, we have only used simple actions in our zaps which enabled _reacting to data changes_ and _sending messages_. Another popular Zapier application is _finding data_ and _using it at a later point in time_.

We have somewhat done this already when we used the _filter step_ to verify that someone has actually gained access to our base. Essentially, we reacted to data changes only for specific values.

Extending on the previous example[1], what if we want to know who has gained access to our base? This is possible and, since we are using Google Sheets, we don't need to add any extra steps in the zap.

All that you would have to do is go to the Slack step. In the `Message Text` box you'll have access all the information related to any row change seen in the linked spreadsheet.

![gif-of-data](https://img.enkipro.com/90680a1d2f923084e64502d4d124b29c.gif)

![image-of-completed-data](https://img.enkipro.com/936b5a4e98e90a855f51334425e4fd5f.png)

To access data from previous steps, click on the `+` button on the right side of the field, and Zapier will show you all the data that you can use.

---
## Practice

With Zapier, you **can't**:

???


* Use it as a database.
* Find data in an app and use it at a later time.
* Monitor data and react to changes.
* Send messages.

---
## Footnotes

[1:Previous Example]

The previous example refers to the zap that sent a Slack message every time a Google Sheets record was created or updated:

![previous-example](https://img.enkipro.com/50de0285a6aa665f7ab1ee83e0c3a152.png)