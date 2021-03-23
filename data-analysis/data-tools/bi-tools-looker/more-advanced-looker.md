---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [LookML](https://training.looker.com/looker-development-foundations/334816){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# More Advanced Looker


---

## Content

Some of the key differences between Looker and other BI tools lie behind the scenes and will only really be noticed by Developers or Data Analysts, but still have massive indirect benefits for other teams.

Imagine you're in the finance team and you need to calculate net revenue. 

The marketing team might also want to use this measure to determine a marketing campaign's profitability. 

It's important that these two groups collaborate and share metrics for consistency across the entire business. 

Looker has its own SQL *data modeling* language for this, **LookML**[1]. 

This is like a simplified version of SQL that makes it easier for first-time users to perform data analysis.

Developers or Data Analysts use LookML to takes the raw data and clean, combine, curate and convert it so that it's and ready for data analysis.

LookML allows you to create **reuseable query components**, so it's much more efficient than standard SQL.

This means that metrics such as "profitability" can be calculated once, at the beginning, and will remain consistent across teams.

All analysis can be run off standardized and centralized data that follows the DRY convention[2]. This is where you "Dont Repeat Yourself", so **metrics are defined once**, at the start. 


---

## Practice

What type of language is LookML?

???

- Data modeling
- General purpose 
- Front-end
- High level


---

## Revision

What's the name of Lookers unique data modeling language?

???

- LookML
- LookerML
- LookSQL
- LookerSQL


---

## Footnotes

[1:LookML]

LookML is a language for describing dimensions, aggregates, calculations, and data relationships in a SQL database. 

Looker uses a model written in LookML to construct SQL queries against a particular database.

[2:DRY Convention]
Don't repeat yourself (DRY) is a principle of software development aimed at reducing repetition of code.
