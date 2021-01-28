---
author: kapnobatai136

tags:
  - discussion

type: normal

category: discussion

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2Fa41bb442321200a0ded3475100e5f9a9%2Fraw%2F000ef19e1786ccc4ca5f846ad98ef2b27b38c189%2Fsql-update-discussion-insight.json){website}

---

# Test Yourself

---

## Content

Let's see how you can handle manipulating data!

Consider the following `movies` table:

| id | name                                     | year | rating |
|----|------------------------------------------|------|--------|
| 1  | Harry Potter and the Prisoner of Azkaban | 2004 | 7.9    |
| 2  | Parasite                                 | 2019 | 8.6    |
| 3  | The Dark Knight                          | 2008 | 9      |
| 4  | Spider-Man: Into the Spider-Verse        | 2018 | 8.4    |
| 6  | Goodfellas                               | 1990 | 8.7    |

How would you update the rating of any of the movies?

It's up to you to choose the movie and its new rating.

To achieve this, you should use the following concepts:
- updating data (`UPDATE ... SET ... WHERE ...`)

If you're not sure what to do, check out this footnote[1].

> 💡 We've included a **Playground** in the *Learn More* section. Use that to get accustomed to the table and try things out.

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.

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