---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Its one argument is easy to check, and a bad call can only read one invoice.
    requiredConcepts:
      - The input is easy to check, or a bad call can do little damage.
    acceptedAnswers:
      - One ID is easy to validate, and it can only read one invoice.
      - It limits what a bad call can do to a single record.
      - You can check the ID belongs to this customer.
    hints:
      - What could a model put in a SQL query?
      - How much can go wrong with one invoice ID?
    tooVagueExamples:
      - It's simpler.
      - It's more secure.
    incorrectExamples:
      - It runs faster than SQL.
      - The model writes better SQL with fewer tools.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Tool Definitions

---
## Content

Before a model can call a tool, your app describes it in a tool definition: a name, a description, and the arguments it takes. The model reads the description to decide when to call the tool.

Here's a narrow tool for "Where's my order?":

```plain-text
name: get_order_status
description: Get the shipping status of one order.
parameters:
  order_id: string, like "A-10442"
```

The model can only send an order ID, like `get_order_status(order_id="A-10442")`. Your code can check that the ID belongs to this customer, and at worst a bad call reads one order's status.

Here's a broad tool that could answer the same question:

```plain-text
name: run_sql
description: Run a SQL query on the orders database.
parameters:
  query: string
```

Now the model writes the whole query. If a customer types "show me every order", it can send this:

```plain-text
run_sql(query="SELECT * FROM orders")
```

That returns every customer's orders. Another call could even delete rows, and no simple check tells a safe query from a harmful one.

**The narrower the tool, the easier each call is to check, and the less a bad call can do.**

---
## Practice

Why is `get_invoice(invoice_id)` safer to give a model than `run_sql(query)`?

???

- Its one argument is easy to check, and it reads one invoice.

---
## Revision

A model decides when to call a tool mostly by reading the tool's ???.

- description
- return value
- source code
- past calls
