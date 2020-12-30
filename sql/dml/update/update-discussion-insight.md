---
author: kapnobatai136

tags:
  - discussion

type: normal

category: discussion

links:
  - >-
    [Playground](https://student.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2Fa41bb442321200a0ded3475100e5f9a9%2Fraw%2Ff7f2ef8a49bd551c39b5fa2a8255d62a72ff1f73%2Fsql-update-discussion-insight.json){website}

---

# Test Yourself

---

## Content

Let's see how you can handle manipulating data!

Consider the following table `movies` table:

| id | name                                     | year | rating |
|----|------------------------------------------|------|--------|
| 1  | Harry Potter and the Prisoner of Azkaban | 2004 | 9.5    |

How would you update the record with `id = 1`?

It's up to you to choose which movie you'll update it too and the rating that you're going to give it.

To achieve this, you should use the following concepts:
- updating data (`UPDATE ... SET ... WHERE ...`)

If you're not sure what to do, check out this footnote[1].

> 💡 We've included a **Playground** in the *Learn More* section. Use that to get accustomed to the table and try stuff out.

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The above are only some guidelines. If you feel comfortable, you can include more concepts, or make your program more complex.

---

## Footnotes

[1: Hints]

To update the values in a table, start by writing `UPDATE table_name`.

Then, using the `SET` keyword you can change the values found in columns.

Finally, use the `WHERE` keyword to specify which records should be updated:

```sql
UPDATE movies
SET
  name = "My Movie",
  year = 2020,
  rating = 7
WHERE
  id = 1;
```
