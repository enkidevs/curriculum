---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A cached answer suits a general question whose answer is the same for everyone and rarely changes, such as the delivery fee; an order's location needs live data.
    requiredConcepts:
      - The delivery fee, because it's the same for everyone or rarely changes.
    acceptedAnswers:
      - The fee question; its answer is the same for every customer.
      - Delivery fee, since it rarely changes.
      - The fee, because order location needs live order data.
    hints:
      - Which answer is the same for every customer?
      - Which answer changes minute by minute?
    tooVagueExamples:
      - The easier one.
      - Whichever is more common.
    incorrectExamples:
      - Where my order is, since it's asked most often.
      - Both, as long as the cache is recent.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Cached fallbacks must be labeled as cached, with when they were made.
    requiredConcepts:
      - Label it as cached or stale and show when it was generated.
    acceptedAnswers:
      - Mark it stale and show its generation date.
      - A note that it's two days old, with the timestamp.
      - Say it's a cached summary and when it was made.
    hints:
      - How would someone know it's old?
      - Which time should be shown?
    tooVagueExamples:
      - Warn users.
      - Be clear.
    incorrectExamples:
      - Refresh its timestamp when it is served.
      - Nothing, if the summary is usually still accurate.

---

# Cached Fallback Answers

---
## Content

A cached fallback answer is a saved reply to a common question, shown when the model call fails.

**It suits questions whose answer is the same for everyone and rarely changes.** In a food-delivery app's support chat, delivery fees fit. A question about one order, like where it is, needs live data instead.

When the model times out, the chat shows this:

```plain-text
Our assistant isn't available right now. Here's
our saved answer on delivery fees, from June 2:
orders under $15 have a $2.99 fee.
```

The first sentence says this is a fallback, and the date tells the customer the fee could have changed since.

Here's the same saved answer without its label:

```plain-text
Delivery is $2.99 for orders under $15.
```

If the fee rose to $3.49 on June 10, this reads as today's fee, and the customer is charged more than the chat told them.

> 💡 Label every cached answer as saved, with the date it was made.

---
## Practice

During a model outage, your support chat can serve a cached answer to "Where is my order?" or "What's the delivery fee?" Which one suits it, and why?

???

- The delivery fee, because it's the same for everyone and rarely changes.

---
## Revision

After a model timeout, your dashboard shows an AI summary generated two days ago. What must appear alongside it?

???

- A stale or cached label with the time it was generated.
