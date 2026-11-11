---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The name goes in as a bound query parameter, so the database treats it as a value and it can't change the query.
    requiredConcepts:
      - As a query parameter or bound value, kept out of the SQL text.
    acceptedAnswers:
      - As a bound parameter, like WHERE name = ?.
      - Pass it as a parameter to the query.
      - A placeholder in the SQL, with the name passed separately.
    hints:
      - What if the name contains a quote mark?
      - Which part of the query should the model's text be allowed to change?
    tooVagueExamples:
      - Carefully.
      - Validate it.
    incorrectExamples:
      - Pasted into the query after trimming spaces.
      - In an f-string, since the name passed schema validation.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your code runs a fixed command and passes the filename as a separate argument, so the text can't add a command of its own.
    requiredConcepts:
      - As a separate argument to a fixed command, kept out of the command string.
    acceptedAnswers:
      - As its own argument, never pasted into the command text.
      - Run a fixed command and pass the filename as an argument.
      - In the argument list, like ["wc", "-l", filename].
    hints:
      - What if the filename contains a semicolon and a second command?
      - Which part of the command should the model's text be allowed to change?
    tooVagueExamples:
      - Safely.
      - Check it first.
    incorrectExamples:
      - Joined into the command string after trimming spaces.
      - Pasted into the command, since the model chose a real file.

---

# Model Output In SQL And Shell

---
## Content

Model text pasted into a SQL query or a shell command can change what that query or command does.

**So your code passes model text in as a separate value, which the database or shell never runs.**

Here's a customer name a model extracted from an email, pasted into a SQLite query that the cursor `cur` runs:

```python
name = "O'Brien"
cur.execute("SELECT * FROM customers WHERE name = '" + name + "'")
```

That gives:

```plain-text
sqlite3.OperationalError: near "Brien": syntax error
```

The quote mark in the name ended the SQL string early, and the rest became broken SQL. Text an attacker wrote can use the same gap to add SQL of its own.

Here's the name sent as a query parameter instead, using the `?` placeholder:

```python
cur.execute("SELECT * FROM customers WHERE name = ?", (name,))
print(cur.fetchall())
```

It prints the matching row:

```plain-text
[("O'Brien", 'pro')]
```

The database gets the name separately, as a plain value. It finds the row, quote mark and all. The second value is the customer's plan.

Shell commands work the same way. `subprocess.run(["wc", "-l", filename])` starts no shell and hands `wc` the model's filename as one argument. So text like `; rm report.csv` inside it is never run as a command.

---
## Practice

Your code looks up a customer name the model extracted. How should the SQL query include it?

???

- As a bound query parameter, kept out of the SQL text.

---
## Revision

Your tool runs a fixed shell command on a filename the model chose. How should the filename reach the command?

???

- Passed as its own argument to the fixed command.
