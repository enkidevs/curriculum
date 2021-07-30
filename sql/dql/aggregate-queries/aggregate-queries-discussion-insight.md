---
author: kapnobatai136

tags:
  - discussion

type: normal

category: how-to

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F0f58777052a47fc5061fa83370089174%2Fraw%2Faa959e729d71cb03bf7d4a5ec079ced985f1e319%2Fsql-aggregate-queries-discussion-insight.json){website}

---

# Aggregate Queries Exercise

---

## Content

> 👩‍💻 Using our [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/0f58777052a47fc5061fa83370089174/raw/aa959e729d71cb03bf7d4a5ec079ced985f1e319/sql-aggregate-queries-discussion-insight.json), your task is to query the `students` table for:
> - **all the students that are from the same class and passed one of the classes**
> - **and create a new column column (e.g., "Average Math Grade") using one of the aggregation keywords** 

Here's how the table looks like:

| id  | first_name | last_name | class | math_grade | english_grade | physics_grade |
|-----|------------|-----------|-------|------------|---------------|---------------|
| 1   | Klarrisa   | Selcraig  | d     | 3.8        | 8.3           | 6.8           |
| 2   | Karel      | Wragge    | d     | 5.4        | 3.4           | 9.7           |
| ... | ...        | ...       | ...   | ...        | ...           | ...           |


Here are some other column ideas:
- `"Minimum English Grade"`
- `"Total Class Students"`

To finish both tasks, you can use the following concepts:
- querying (`SELECT column_name FROM table_name`)
- conditions (`WHERE <condition>`)
- comparison operators (`grade > 1`)
- logical operators (`OR`, `AND`)
- aggregation keywords

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1].

When you're finished, feel free to share your solution with the community, join in on discussions, and upvote solutions from your fellow learners!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/0f58777052a47fc5061fa83370089174/raw/aa959e729d71cb03bf7d4a5ec079ced985f1e319/sql-aggregate-queries-discussion-insight.json) and start coding!

---

## Footnotes

[1: Hints]

A good place to get started is by examining all the data in the table:

```sql
SELECT
  *
FROM
  students
```

This way you'll know which classes, subjects, and grades exist.

Once you get a feel for the data you're working with, you can start building your query.

To get started, include the columns that you want to see in your result set:

```sql
SELECT
  first_name,
  class,
  math_grade,
  AVG(math_grade) -- here we're aggregating the average math grade
FROM
  students
```

After that, start building your condition:

```sql
SELECT
  first_name,
  class,
  math_grade,
  AVG(math_grade) -- here we're aggregating the average math grade
FROM
  students
WHERE
  class = 'a' AND
  math_grade > 1;
```
