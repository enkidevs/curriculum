---
author: kapnobatai136

tags:
  - discussion

type: normal

category: discussion

links:
  - >-
    [Playground](https://learner.enkicamp.com/public/playground?jsonUrl=https%3A%2F%2Fgist.githubusercontent.com%2Fkapnobatai137%2F757d2557a971940305ace59e5bce0808%2Fraw%2F32399b94024073c351727c6888a697f9fa448737%2Fsql-insert-discussion-insight.json){website}

---

# Test Yourself

---

## Content

You've leveled up in SQL! It's time to test your data insertion skills.

Consider the following `movies` table:

| id  | name                   | year | rating |
|-----|------------------------|------|--------|
| 1   | No Country For Old Men | 2007 | 9      |
| ... | ...                    | ...  | ...    |

How would you insert two more records in this table?

It's up to you to choose which movies you'll insert. They can be your favorite movies ever, some well-known classics, or just recent movies that you like.

Feel free to choose the rating of the movies. We gave *No Country For Old Men* a nine out of ten, but you can use anything **as long as it's a number**.

To achieve this, you should use the following concepts:
- inserting data into a table (`INSERT INTO table_name VALUES`)

If you're not sure what to do, check out this footnote[1].

When you're ready, leave a comment here with your submission. If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.

---

## Footnotes

[1: Hints]

Start off by writing the `INSERT` command:

```sql
INSERT INTO movies VALUES
-- list of rows
```

Next, add your selected movies as rows of values.

> 💡 Remember that the order of values must match the order of the columns **as they are defined in the table**.

```sql
INSERT INTO movies VALUES
-- the order of values has to be (id, name, year, rating)
(1, "No Country For Old Men", 2007, 9) -- first row we're adding
(1, "Toy Story", 1995, 8); -- second row we're adding
```

You can try out your query in our **Playground**, which you'll find in the *Learn More* section.

After you've inserted the movies, you can check that they were inserted correctly by returning all the data in the table:

```sql
SELECT
  *
FROM
  movies;
```