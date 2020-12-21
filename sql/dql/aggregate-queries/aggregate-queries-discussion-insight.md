---
author: kapnobatai136

tags:
  - discussion

type: normal

category: discussion

links:
  - >-
    [Playground](https://student.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F0f58777052a47fc5061fa83370089174%2Fraw%2Faa959e729d71cb03bf7d4a5ec079ced985f1e319%2Fsql-aggregate-queries-discussion-insight.json){website}

---

# Test Yourself

---

## Content

You're getting good at SQL! Let's see how you can handle some of the new keywords that you learned.

We've prepared a new data set for you, the `students` table:

| id  | first_name | last_name | class | math_grade | english_grade | physics_grade |
|-----|------------|-----------|-------|------------|---------------|---------------|
| 1   | Klarrisa   | Selcraig  | d     | 3.8        | 8.3           | 6.8           |
| ... | ...        | ...       | ...   | ...        | ...           | ...           |

How would you find all the students that **are from the same class** and that **passed one of the classes**.

Finally, using one of the aggregation keywords (`SUM`, `COUNT`, `MIN`, `MAX`, `AVG`, `COUNT`), create a new column and rename it accordingly (using the `AS` keyword). Here are some examples of what you can do:
- `"Average Math Grade"`
- `"Minimum English Grade"`
- `"Total Class Students"`

It's up to you to choose:
- which class (e.g. `a`)
- which subject (e.g. `english`)
- what the passing grade is (e.g. `5`)
- what aggregation keyword to use

To achieve this, you should use the following concepts:
- querying (`SELECT column_name FROM table_name`)
- conditions (`WHERE <condition>`)
- comparison operators (`grade > 1`)
- logical operators (`OR`, `AND`)
- aggregation keywords

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The above are only some guidelines. If you feel comfortable, you can include more concepts, or make your program more complex.

---

## Footnotes

[1: Hints]

You should start out by looking at all the data in the table:

```sql
SELECT
  *
FROM
  students
```

This way you'll know which classes, subjects, and grades are present in the table.

Then, when you're comfortable, start building your query.

First, include the columns that you want to see in your result set:

```sql
SELECT
  first_name,
  class,
  math_grade,
  AVG(math_grade)
FROM
  students
```

After that, start building your condition:

```sql
SELECT
  first_name,
  class,
  math_grade
FROM
  students
WHERE
  class = 'a' AND
  math_grade > 1;
```

Finally, after you've tested the query, you can copy and paste it in the comment section.