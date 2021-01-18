---
author: kapnobatai136

type: normal

category: discussion

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F2b85df43ad3d134112160d24aa78ad5a%2Fraw%2F9b4aab60d58fbe17e783458192629d83c6eb53aa%2Fsql-building-queries-discussion-insight.json){website}

---

# Test Yourself

---

## Content

Now that you know how queries work, it's time to try them out!

Consider this scenario: you're working with Professor Oak to implement the next-gen Pokédex.

You're in charge of the database, meaning that you'll be writing all the queries for the Pokédex.

The main `pokemon` table has the following schema:

| id  | name       | generation | type_1 | type_2 |
|-----|------------|------------|--------|--------|
| 1   | Bulbasaur  | 1          | Grass  | Poison |
| 2   | Charmander | 1          | Fire   | Fire   |
| ... | ...        | ...        | ...    | ...    |

Your task is to write a query that satisfies these conditions:
- all Pokémon should be from **the same generation**
- all Pokémon should have **the same type**

It's up to you to choose which generation the Pokémon are from, and which type they have in common.

To achieve this, you should use the following concepts:
- querying (`SELECT column_name FROM table_name`)
- conditions (`WHERE <condition>`)
- comparison operators (`name = "Enki"`)
- logical operators (`OR`, `AND`)

We've included a **Playground** in the *Learn More* section. In there, you can check out all the data that the `pokemon` table contains and try your query out.

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.

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

Finally, after you've tested the query, you can copy and paste it in the comment section.