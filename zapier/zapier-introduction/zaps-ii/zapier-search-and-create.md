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

# Search and Create


---

## Content

Depending on the app that you are using, Zapier allows you to create data after doing a search action[1].

For example, a workflow which uses this feature could be monitoring some data change and, when a certain condition is met, it'll create a new data record

Let's take another look at the zap we have created. After you receive a message that a person was given access to your base, you want to write a new cell that specifies the number of access days.

Go ahead and add another Google Sheets step to our zap, right at the end of the flow. This time, we want to create a new column, so you would have to search the `Choose Action Event` drop-down for the `Create Spreadsheet Column` option.

![search-and-create](https://img.enkipro.com/4da04371ac9c9efc7769f35c39b275b2.png)

Every time this step will be activated, a new column named `# of days` will be added after the rightmost column. Other than the column name, no other values are inserted[2].


---

## Practice

Which of the following **is not an action** belonging to Google Sheets integration? If you need a refresher you can always visit the [app's page](https://zapier.com/apps/google-sheets/integrations) on Zapier.

???

- Only continue if...
- Create Spreadsheet Column
- Create Spreadsheet Row
- Update Spreadsheet Row


---

## Revision

Which of the following **is an action** belonging to Twitter. If you need a refresher, you can go to the [app's page](https://zapier.com/apps/twitter).

???

- Replace File.
- Create spreadsheet.
- Create workbook.


---

## Footnotes

[1:Search Action]
One common action in Zapier is the search and create. When setting up your step, you can look for data (search) in your application, and if it is not found you can then create a new record.

[2:Create a New Column]
This step was set up such that every time it is activated a new column is added. This means that you might end up with 10 (or even more) new columns with the same name. Some improvements for this zap will be presented in a subsequent mission.
