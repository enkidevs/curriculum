---
author: kapnobatai136
category: must-know
type: normal
---

# Relational Databases


---

## Content

When asked for a definition of relational databases, most people say that tables in a database contain rows that communicate - hence the relational part. This is not quite true. 

The relation is between the column (field), the row, and the data (or type, to be more specific) that is inserted.

You can have a base with multiple tables, each holding a different type of data. 

Consider this: you're a movie theater manager and recently started to store your data digitally. You're mostly interested in ticket sales (likely before 2020 😢). 

You first created a new table that holds all data, which looked something like this:

| Identification | Movie Name | Movie Duration | ... | Buyer Name | Buy Date   | ... |
| -------------- | ---------- | -------------- | --- | ---------- | ---------- | --- |
| 1              | Peter Pan  | 107            | ... | Andrei     | 25/02/2004 | ... |
| ...            | ...        | ...            | ... | ...        | ...        | ... |

A better way of doing this is to have two separate tables, one for movies that are showing, and one for ticket buyers. Both tables would communicate through a movie identifier.

| Identification | Movie Name | Movie Duration | ... |
| -------------- | ---------- | -------------- | --- |
| 1              | Peter Pan  | 107            | ... |
| ...            | ...        | ...            | ... |

| Buyer Name | Buy Date   | Movie ID | ... |
| ---------- | ---------- | -------- | --- |
| Andrei     | 25/02/2004 | 1        | ... |
| ...        | ...        | ...      | ... |
 
