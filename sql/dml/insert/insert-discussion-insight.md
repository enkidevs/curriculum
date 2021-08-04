---
author: kapnobatai136

tags:
  - discussion

type: normal

category: how-to

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F757d2557a971940305ace59e5bce0808%2Fraw%2F32399b94024073c351727c6888a697f9fa448737%2Fsql-insert-discussion-insight.json){website}

---

# Insert Exercise

---

## Content

> 👩‍💻 Using our [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/757d2557a971940305ace59e5bce0808/raw/32399b94024073c351727c6888a697f9fa448737/sql-insert-discussion-insight.json), your task is to: **insert two more records into the `movies` table**.

Here is what the `movies` table looks like:

| id  | name                   | year | rating |
|-----|------------------------|------|--------|
| 1   | No Country For Old Men | 2007 | 9      |
| ... | ...                    | ...  | ...    |


It's up to you to choose which movies you'll insert. They can be your favorite movies ever, some well-known classics, or just recent movies that you like.

Feel free to choose the rating of the movies. We gave *No Country For Old Men* a nine out of ten, but you can use anything **as long as it's a number**.

To solve this, try using the following concepts:
- inserting data into a table (`INSERT INTO table_name VALUES`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1].

When you're finished, feel free to share your solution with the community, join in on discussions, and upvote solutions from your fellow learners!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the [playground](https://learn.enki.com/public/playground?jsonUrl=https://gist.githubusercontent.com/kapnobatai137/757d2557a971940305ace59e5bce0808/raw/32399b94024073c351727c6888a697f9fa448737/sql-insert-discussion-insight.json) and start coding!

---

## Footnotes

[1: Hints]

Start off by writing the `INSERT` command:

```sql
INSERT INTO movies VALUES
-- list of rows
```

Then, add your selected movies as rows of values.

> 💡 Remember that the order of values must match the order of the columns **as they are defined in the table**.
