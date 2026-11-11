---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The test asserts on the path in the trace, not just the final text.
    requiredConcepts:
      - Assertions on the path itself, such as which calls ran, their arguments, their order, or the absence of forbidden calls.
    acceptedAnswers:
      - That book_flight ran once with the right flight and traveler.
      - Which tools were called, with which arguments, in what order.
      - That no cancel or extra booking call happened.
    hints:
      - Could the reply be right while a call was wrong?
      - What in the trace shows what actually happened?
    tooVagueExamples:
      - Check the trace more.
      - Add more assertions.
    incorrectExamples:
      - That the reply includes a confirmation number.
      - That the trace has at least three calls.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Agent Traces

---
## Content

A test that checks only an agent's final answer can pass on a run that went wrong along the way.

To catch that, your test can check the agent's trace, the recorded list of every model step and tool call in a run, with arguments and results.

Here's a travel-booking agent's trace for "Book me a Tuesday flight to Denver":

```plain-text
1. search_flights(to="DEN", date="Tue")
   -> 6 flights
2. book_flight(flight="220", cabin="business")
   -> confirmed, $760
3. get_travel_policy()
   -> economy only; over $800 needs approval
4. cancel_booking(flight="220")
   -> cancelled, $75 fee
5. book_flight(flight="220", cabin="economy")
   -> confirmed, $390
Answer: You're booked on flight 220, economy, Tuesday.
```

The answer is right, so a test that checks only the answer passes. The trace shows the problem: step 2 booked business class before step 3 read the policy, and step 4 cost a $75 cancellation fee.

Here are four assertions on the trace, and what each reports for this run:

```plain-text
FAIL  get_travel_policy runs before any book_flight
FAIL  book_flight runs exactly once (ran 2 times)
FAIL  cancel_booking never runs (ran at step 4)
FAIL  every book_flight has cabin="economy" (step 2: cabin="business")
```

**All four fail on a run whose answer passes, because they check what the answer hides: which tools ran, with which arguments, in what order, and which must never run.**

---
## Practice

Your travel-booking agent's test only checks that the reply says "Flight booked." What should it also assert from the trace?

???

- Which calls ran with which arguments, and that no forbidden call happened.

---
## Revision

A support bot answered correctly, but its trace shows `get_order` fetched another customer's order. A test should check each call's ???.

- arguments
- status code
- duration
- token count
