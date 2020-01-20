---
author: kapnobatai136

category: must-know

aspects:
  - introduction

type: normal

---

# Flow of Information

---
## Content

When we were working with templates in the previous examples, you might've noticed that between the Google Sheets and Slack integration (or **steps**), there was a small `+` icon available.

What this is means is that you are not limited to using two applications (or the same application once).

Let's first understand what happens behind the scenes. In the zap we have previously created:
1. Zapier monitors a Google Sheet
2. A change in said sheet triggers a Slack action
3. You receive a direct message on Slack

Think of Zapier as being really polite and respectful of the queue. It can't send a Slack message before the trigger, and the action is not triggered before the change.

In layman terms, information in Zapier flows from **top to bottom**.

---
## Practice

How does information flow in Zapier?

???

* From top to bottom.
* From bottom to top.
* From left to right.
* from right to left.