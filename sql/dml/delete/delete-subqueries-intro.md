---
author: kapnobatai136

type: normal

category: must-know

tags:
  - delete
  - syntax

---

# Delete With Subqueries Intro

---

## Content

We've shown you how to use subqueries with `INSERT` and `UPDATE`. Now, it's time to see how they work with `DELETE`.

Imagine you have an app that stores data in two tables:
- `characters` - for in-game information
- `personal_data` - for the users' personal information

You received a GDPR[1] request that states you should remove all personal data related to the `"zGoodGamerz"` character.

This is how you can do it using subqueries:

```sql
DELETE FROM personal_data
WHERE character_id IN
  (SELECT id
  FROM characters
  WHERE name = "zGoodGamerz");
```

Depending on the [RDBMS](#rdbms-glossary-entry) used, this command might be rejected. The most common reason is that the record is linked to another table and the command fails.

To overcome this, you could try deleting all the associated data from the other tables.

---

## Practice

Delete all the `insects` that are found in the `"Western Region"` **using subqueries**:

```sql
??? insects
??? id IN
  (??? id
  FROM insects
  WHERE region = ???);
```

- DELETE FROM
- WHERE
- SELECT
- "Western Region"
- DELETE

---

## Revision

Deleting with subqueries could fail because the record is ???.

- linked to another table
- non-existent

---

## Footnotes

[1: GDPR]
todo