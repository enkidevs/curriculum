---
author: kapnobatai136

tags:
  - discussion

type: normal

category: discussion

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F0f58777052a47fc5061fa83370089174%2Fraw%2Faa959e729d71cb03bf7d4a5ec079ced985f1e319%2Fsql-aggregate-queries-discussion-insight.json){website}

---

# Test Yourself

---

## Content

Great job getting this far in SQL! Let's apply your learnings through an exercise.

We've prepared a new data set for you, the `students` table:

| id  | first_name | last_name | class | math_grade | english_grade | physics_grade |
|-----|------------|-----------|-------|------------|---------------|---------------|
| 1   | Klarrisa   | Selcraig  | d     | 3.8        | 8.3           | 6.8           |
| 2   | Karel      | Wragge    | d     | 5.4        | 3.4           | 9.7           |
| ... | ...        | ...       | ...   | ...        | ...           | ...           |

Your first challenge is to find all the students that **are from the same class** and that **passed one of the classes**.

Next, you should create a new column using one of the aggregation keywords (`SUM`, `COUNT`, `MIN`, `MAX`, `AVG`, `COUNT`)  and rename it accordingly (using the `AS` keyword). 

Here are some column ideas:
- `"Average Math Grade"`
- `"Minimum English Grade"`
- `"Total Class Students"`

To finish both tasks, you can use the following concepts:
- querying (`SELECT column_name FROM table_name`)
- conditions (`WHERE <condition>`)
- comparison operators (`grade > 1`)
- logical operators (`OR`, `AND`)
- aggregation keywords

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.

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

Finally, after you've tested the query, you can copy and paste it into the comment section.