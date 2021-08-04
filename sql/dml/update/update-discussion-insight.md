---
author: kapnobatai136

tags:
  - discussion

type: normal

category: how-to

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2Fa41bb442321200a0ded3475100e5f9a9%2Fraw%2F000ef19e1786ccc4ca5f846ad98ef2b27b38c189%2Fsql-update-discussion-insight.json){website}

---

# Update Exercise

---

## Content

> 👩‍💻 Using our [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/a41bb442321200a0ded3475100e5f9a9/raw/000ef19e1786ccc4ca5f846ad98ef2b27b38c189/sql-update-discussion-insight.json), your task is to: **update a movie's rating in the `movies` table**.

Here's what the table looks like:

| id | name                                     | year | rating |
|----|------------------------------------------|------|--------|
| 1  | Harry Potter and the Prisoner of Azkaban | 2004 | 7.9    |
| 2  | Parasite                                 | 2019 | 8.6    |
| 3  | The Dark Knight                          | 2008 | 9      |
| 4  | Spider-Man: Into the Spider-Verse        | 2018 | 8.4    |
| 6  | Goodfellas                               | 1990 | 8.7    |

It's up to you to choose the movie and its new rating.

To solve this, try using the following concepts:
- updating data (`UPDATE ... SET ... WHERE ...`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1].

When you're finished, feel free to share your solution with the community, join in on discussions, and upvote solutions from your fellow learners!

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/a41bb442321200a0ded3475100e5f9a9/raw/000ef19e1786ccc4ca5f846ad98ef2b27b38c189/sql-update-discussion-insight.json) and start coding!

---

## Footnotes

[1: Hints]

To update the values in a table, start by writing `UPDATE table_name`.

Then, using the `SET` keyword, you can change the values found in columns.

Finally, use the `WHERE` keyword to specify which records should be updated:

```sql
UPDATE
  table
SET
  column = value
WHERE
  condition;
```
