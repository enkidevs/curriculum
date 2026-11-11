---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Look up the invoice by its ID with a database query or a tool call, since one record holds the answer.
    requiredConcepts:
      - A direct lookup by the invoice ID, through a query or a tool call.
    acceptedAnswers:
      - Query the invoice by its ID.
      - A tool call that fetches invoice INV-2207 from the database.
      - Look up that one record directly, without retrieval.
    hints:
      - Where does the invoice's status actually live?
      - Is the answer written in any document?
    tooVagueExamples:
      - Search for it.
      - Ask the model.
    incorrectExamples:
      - Retrieve docs passages about invoice statuses.
      - Embed the question and search the help center.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Retrieval Fit

---
## Content

RAG works when the answer sits somewhere in a large or changing set of documents.

**When the answer is one record you can look up by ID, like a customer's account, look it up directly.**

Here are two questions a docs bot might get:

```plain-text
How do I export a dashboard as a PDF?
How many seats are left on my account?
```

The first answer is on a docs page. The second is a number in your billing database, different for each customer.

Sent through search, the seats question finds the closest general page, and the model turns it into a guess:

```plain-text
Retrieved: [1] Seats: Every plan starts with 10
seats. Add more under Billing > Seats.
Answer: You have 10 seats left.
```

That page describes every plan, and the model read it as this customer's count.

A tool fits the second question better. Given a `get_seats(account_id)` tool alongside docs search, the model calls whichever one matches the question:

```plain-text
get_seats("acct_812") -> {"total": 25, "used": 23}
Answer: You have 2 seats left.
```

Now the number comes from the customer's own record.

> 💡 If you could find the answer by its ID, use a lookup or a tool. Use RAG when you'd have to search documents for it.

---
## Practice

A customer asks your bot for the status of invoice INV-2207. How should your app get the answer?

???

- Look up the invoice by its ID, with a query or tool call.

---
## Revision

RAG fits best when the answer sits somewhere in a large, changing set of ???.

- documents
- database rows
- account records
- user profiles
