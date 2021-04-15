---
author: kapnobatai136
category: must-know
type: normal
---

# Zap Overview


---

## Content

To end this mission let's have a look at the full zap:

![zap-overview](https://img.enkipro.com/bda11ffb840b378143132f2475ceaaa2.png)

Step by step, this is what what happens:

1. Monitor Important Data
   - monitor a spreadsheet for any changes
2. Only continue if...
   - the `Has Access` column contains `Yes`
3. Send Direct Message in Slack
   - you will receive a direct message that says `<First Name> <Last Name> has gained access to your base!`
4. Create Spreadsheet Column in Google Sheets
   - Zapier will add a new column with the title `# of days` after the rightmost column
5. Lookup Spreadsheet Row in Google Sheets
   - Zapier checks that the `Has Access?` column contains `Yes`
6. Update Spreadsheet Row in Google Sheets
   - Zapier updates the corresponding cell in the `# of days` column to `7` 

In the `Task History` mission we will discuss what problems this zap has and how you can improve it.
 
