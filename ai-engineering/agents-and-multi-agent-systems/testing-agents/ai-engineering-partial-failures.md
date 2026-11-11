---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Undo the outbound booking if it can be cancelled cleanly, or stop and hand the choice to the traveler.
    requiredConcepts:
      - Cancel the outbound (if refundable), or stop and ask the traveler or a person.
    acceptedAnswers:
      - Cancel the outbound if it's refundable.
      - Stop and ask the traveler what to do.
      - Undo the first booking, or hand it to a person.
    hints:
      - Can the outbound booking be undone?
      - Who decides if it can't?
    tooVagueExamples:
      - Handle the error.
      - Fix it.
    incorrectExamples:
      - Retry the whole round trip from the start.
      - Report success, since one flight is booked.

---

# Partial Failures

---
## Content

An agent run can stop halfway, for example when the server crashes after a tool changed something but before your code saved the result. That's called a partial failure.

**Each point where a run can stop needs a planned recovery: resume, undo, or stop for a person.**

Say a travel-booking agent books a round trip as two one-way flights. Here's where a run might stop, and the recovery for each:

```plain-text
1. After search_flights
   -> resume: searching again is harmless
2. After book_flight ran, before the result was saved
   -> stop: check the airline before booking again
3. After the outbound booked, when the return fails
   -> undo: cancel the outbound if it's refundable, or stop and ask the traveler
```

Point 2 is the dangerous one, because the ticket may exist while your record says it doesn't.

Here's what a loop that retries failed runs does there:

```plain-text
book_flight(flight="881") -> ticket 0167
[crash before the result is saved]
retry: book_flight(flight="881") -> ticket 0168
```

That's two tickets for one traveler. Without a plan, a stop point gets whatever your code happens to do.

> 💡 Give each stop point a test. Use a fixture that makes `book_flight` succeed, make the save fail right after it, and check that the planned recovery runs.

---
## Practice

After a crash, rerunning the last step is risky when that step ??? before its result was saved.

- made a change
- only read data
- chose the next tool
- validated the input

---
## Revision

Your agent booked a round trip's outbound flight, then found no return flight it could book. What's a planned recovery?

???

- Cancel the outbound if it's refundable, or stop and ask the traveler.
