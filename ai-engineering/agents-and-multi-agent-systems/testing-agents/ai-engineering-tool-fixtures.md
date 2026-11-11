---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A fake tool that records the call and returns the timeout reproduces the failure without real side effects.
    requiredConcepts:
      - A fake or stub book_flight that returns the timeout.
    acceptedAnswers:
      - A fake book_flight that records the call and times out.
      - A fixture tool scripted to return that timeout.
      - Stub the booking tool so it returns a timeout.
    hints:
      - How do you get the same failure every run?
      - What should never run in this test?
    tooVagueExamples:
      - A safe test environment.
      - Mock things.
    incorrectExamples:
      - Book real tickets on staging until one times out.
      - Tell the model to imagine the booking timed out.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A sell-out is rare in real traffic, so a fixture makes it happen on every test run without charging a real card.
    requiredConcepts:
      - The fixture makes the rare case happen every run, or it avoids real charges.
    acceptedAnswers:
      - It happens every run instead of almost never.
      - The rare case repeats on demand, and no card is charged.
      - Waiting for a real sell-out could take months.
    hints:
      - How often does a fare sell out mid-booking in real traffic?
      - What would a real booking attempt cost?
    tooVagueExamples:
      - It's easier.
      - Fixtures are faster.
    incorrectExamples:
      - The model handles fake errors better than real ones.
      - Real sell-outs return a different error message.

---

# Tool Fixtures

---
## Content

Some tool results are rare in real traffic but still need testing, like a fare selling out between search and booking.

In tests, you can swap a real tool for a stand-in that returns a response you wrote in advance. That stand-in is called a tool fixture.

Here's a fixture that makes the sell-out happen on every test run:

```plain-text
fixture: fare_sold_out
  search_flights(to="LHR", date="Mon")
    -> flight 881 at $1,240
  book_flight(flight="881")
    -> error: fare_no_longer_available
  search_flights(to="LHR", date="Mon")
    -> flight 883 at $1,310
```

The middle response is the rare case: flight 881 sold out after the search found it. With the fixture, the agent gets that same error at the same step on every run.

**The fixture never reaches the airline, so no card gets charged, and it records each call so your test can check what the agent asked for.**

> 💡 For each tool, list the rare results your tests need, like sold out, permission denied, and timeout, and write one fixture for each.

---
## Practice

A test must reproduce a `book_flight` timeout without buying a real ticket. What setup should it use?

???

- A fake `book_flight` that records the call and returns a timeout.

---
## Revision

Why test a fare selling out with a fixture, instead of waiting for it to happen in real traffic?

???

- It happens every run instead of almost never.
