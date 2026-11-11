---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Saved state records completed actions and their results, so a restart can see the booking already happened.
    requiredConcepts:
      - A record that the booking already happened, such as its status, confirmation number, or a unique action key.
    acceptedAnswers:
      - That the booking ran, with its confirmation number.
      - Status booked, plus the confirmation, so the restart skips it.
      - A note that the booking is done and a unique key for it.
    hints:
      - What would a restart need to know?
      - Where does state live, if not in the conversation?
    tooVagueExamples:
      - Everything about the booking.
      - The important details.
    incorrectExamples:
      - The model's message saying it booked the flight.
      - A summary of the conversation so far.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The agent runs the seat hold again, because nothing records that it already ran, so the trip ends up with two holds.
    requiredConcepts:
      - The hold runs again, or a second seat gets held, because nothing records the first one.
    acceptedAnswers:
      - It holds a second seat, since nothing says the first hold happened.
      - The agent starts over and holds the seat twice.
      - A duplicate hold, because the restart can't see the first.
    hints:
      - What does the restart know about the first hold?
      - Which steps would the agent run again from the start?
    tooVagueExamples:
      - Something breaks.
      - It loses progress.
    incorrectExamples:
      - Nothing, because the model remembers the hold.
      - It skips the hold, since the seat is already taken.

---

# Agent State

---
## Content

A long agent task can stop partway, for example when your server restarts.

To pick up where it left off, your app needs a record of where the task stands: its status, the actions already done, and any approvals. That record is called agent state.

**Agent state lives in storage your code controls, such as a database row, so it survives a restart.**

Here's the row a travel-booking agent saves partway through a London booking:

```plain-text
trip_request tr-5531
  traveler: e-1042
  status: awaiting_approval
  done: search_flights, hold_seat (hold h-88)
  approval: sent to manager, no answer yet
```

`done` lists the tool calls that already ran. After a restart, the loop reads this row and picks up at `awaiting_approval`. It skips the search, keeps hold h-88, and waits for the manager.

Without the row, the agent has no record of the hold, so it starts over:

```plain-text
search_flights(to="LHR", date="Mon") -> 6 flights
hold_seat(flight="881") -> hold h-91
```

Now one trip holds two seats, h-88 and h-91.

> 💡 Write to the state record after every tool call that changes something, and read it at the start of every pass.

---
## Practice

Your travel-booking agent books a flight, then crashes. What must its saved record hold so the restart won't book again?

???

- That the booking ran, with its confirmation number.

---
## Revision

Your agent holds a seat, then the server restarts, and the app saved no state. What happens when the agent picks the task back up?

???

- It holds a second seat, since nothing says the first hold happened.
