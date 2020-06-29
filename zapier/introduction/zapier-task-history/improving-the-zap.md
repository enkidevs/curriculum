---
author: kapnobatai136
category: tip
type: normal
---

# Zap Improvements


---

## Content

Having identified our problems, it is now time to fix them. Let's begin by moving some of the steps around. Unfortunately, at the time of writing, there is no easy way of doing this. You have to delete and create the step to move it.

![zap-overview](https://img.enkipro.com/bda11ffb840b378143132f2475ceaaa2.png)

Step four (the one in which we create a new column) creates more trouble than it benefits. The same action can be done once (creating the column in Google Sheets), with no need to automate it (for this application). Let's remove it from the flow.

You can remove steps by clicking on them, followed by clicking on the `...` found in the top right corner of the step card, and selecting the `Delete...` option.

Another problem was that the zap was checking twice that the `Has Access?` column says `Yes` twice. If we move step three (the one that sends a message in Slack) last, you won't need step five anymore (`Lookup Spreadsheet Row in Google Sheets`).

The improved zap should look something like this:

![final-improved-zap](https://img.enkipro.com/a7ed827bbf46958adfb8b36344ce39db.png)
 
