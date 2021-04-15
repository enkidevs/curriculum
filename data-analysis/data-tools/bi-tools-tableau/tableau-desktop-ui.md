---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Tableau
    Tutorial](https://help.tableau.com/current/guides/get-started-tutorial/en-us/get-started-tutorial-home.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Tableau Desktop UI


---

## Content

Tableau supports the ability to connect to loads of different data sources. The *Connect* pane lists the most common places that you might want to connect to[1].

When it comes to creating a view, Tableau makes use of **drag and drop** functionality so that you can intuitively and interactively create reports.

You also have the option to write custom SQL queries.

You can drag and drop any discrete[2] dimensions[3] or continuous[4] measures[5] to build your graphs.

When you create a view that includes time, Tableau automatically generates a line chart, with time on the x axis.

Otherwise you can click on the 'Show Me' tab to see all of the graph/chart options. 

You can add however many dimensions or measures you like, so long as the chart still tells a useful story.

By adding a second discrete dimension to the view you can categorize your data into discrete chunks instead of looking at your data continuously over time. 

In these cases, a bar chart is more appropraite and Tableau will update the type of chart shown automatically. 

> 💡 Note, you can also **double-click** a field to add it to your view, but be careful - Tableau makes assumptions about where to add that data and it might not be placed where you expect. You can always click Undo to remove the field, or drag it off the area where Tableau placed it to start over.


---

## Practice

Dimensions are ???, and are blue in Tableau. 
Measures are ???, and are green in Tableau.

- discrete
- continuous


---

## Revision

??? are discrete, and are blue in Tableau. 
??? are continuous, and are green in Tableau.

- Dimensions
- Measures


---

## Footnotes

[1:Connecting to Data]

Tableau allows you to connect to data:

- stored in a file, such as Microsoft Excel, PDF, Spatial files etc
- stored on a server, such as Tableau Server, Microsoft SQL Server, Google Analytics etc
- stored in your CRM
- you’ve connected to before

[2: Discrete]

Discrete fields contain a finite number of values such as country, state, or customer name. Discrete fields are colored blue in Tableau.

[3: Dimensions]

Dimensions are qualitative data, such as a name or date. By default, Tableau automatically classifies data that contains qualitative or categorical information as a dimension, for example, any field with text or date values. 

These fields generally appear as column headers for rows of data, such as Customer Name or Order Date, and also define the level of granularity that shows in the view.

[4: Continuous]

Continuous fields can contain an infinite number of values. This can be a range of values such as sales within a specific date range or quantities. Continuous fields are colored green in Tableau.

[5: Measures]

Measures are quantitative numerical data. By default, Tableau treats any field containing this kind of data as a measure, for example, sales transactions or profit. Data that is classified as a measure can be aggregated based on a given dimension, for example, total sales (Measure) by region (Dimension).
