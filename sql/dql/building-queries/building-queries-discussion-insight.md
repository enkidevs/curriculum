---
author: kapnobatai136

type: normal

category: how-to

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F2b85df43ad3d134112160d24aa78ad5a%2Fraw%2F9b4aab60d58fbe17e783458192629d83c6eb53aa%2Fsql-building-queries-discussion-insight.json){website}

---

# Building Queries Exercise

---

## Content

> 👩‍💻 Using our [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/2b85df43ad3d134112160d24aa78ad5a/raw/9b4aab60d58fbe17e783458192629d83c6eb53aa/sql-building-queries-discussion-insight.json), your task is to query the `pokemon` table for Pokémon that:
> - **are from the same generation**
> - **are from the same type**

Here's what the table looks like:

| id  | name       | generation | type_1 | type_2 |
|-----|------------|------------|--------|--------|
| 1   | Bulbasaur  | 1          | Grass  | Poison |
| 2   | Charmander | 1          | Fire   | Fire   |
| ... | ...        | ...        | ...    | ...    |

It's up to you to choose which generation the Pokémon are from, and which type they have in common.

To achieve this, you should use the following concepts:
- querying (`SELECT column_name FROM table_name`)
- conditions (`WHERE <condition>`)
- comparison operators (`name = "Enki"`)
- logical operators (`OR`, `AND`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1].

When you're finished, feel free to share your solution with the community, join in on discussions, and upvote solutions from your fellow learners!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/2b85df43ad3d134112160d24aa78ad5a/raw/9b4aab60d58fbe17e783458192629d83c6eb53aa/sql-building-queries-discussion-insight.json) and start coding!

---

## Footnotes

[1: Hints]

You should start out by looking at all the data in the table:

```sql
SELECT
  *
FROM
  pokemon
```

This way you'll know which generations and types are available in the table.

Then, when you're comfortable, start building your query.

First, include the columns that you want to see in your result set:

```sql
SELECT
  name,
  region,
  type_1
FROM
  pokemon
```

After that, start building your condition:

```sql
SELECT
  name,
  region
FROM
  pokemon
WHERE
  region = 1 AND
  type_1 = "Fire";
```
