---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The employee makes the booking from the agent's suggestion, so the agent needs no booking tool.
    requiredConcepts:
      - The employee (a person) books, or the agent only lists options.
    acceptedAnswers:
      - The employee books it from the agent's suggestion.
      - A person; the agent only suggests flights.
      - The traveler, since the agent has no booking tool.
    hints:
      - What does the agent hand back at this level?
      - Who acts on that suggestion?
    tooVagueExamples:
      - Someone else.
      - It depends on the flight.
    incorrectExamples:
      - The agent, once the employee picks a flight.
      - A manager, who approves each suggestion.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Automation Levels

---
## Content

Some agents only suggest an action, and others take it themselves. How much an agent may do on its own is called its automation level.

Say a travel-booking agent's search finds flight 214 to Portland, Thursday 8:20 am, a refundable $300 fare. Here's what the agent returns at three levels:

```plain-text
Suggests:
  Flight 214 fits: Thu 8:20 am, $300.
Drafts for approval:
  Booking ready: flight 214, $300. [Approve]
Acts within limits:
  book_flight(flight="214") -> K7Q2LM
  Booked flight 214. Confirmation K7Q2LM.
```

**What changes between levels is who makes the booking happen:**

- **Suggests:** the employee reads the reply and books, so the agent gets no booking tool at all.
- **Drafts for approval:** the agent prepares the booking, and a person taps Approve before your code runs it.
- **Acts within limits:** your code checks the booking against set rules, like a price cap, and runs it right away if it passes.

---
## Practice

Your agent works at the "suggests" level for flights. Who makes a booking happen?

???

- The employee books it from the agent's suggestion.

---
## Revision

An agent books any refundable fare under $800 straight away, with no one approving it. That's the ??? level.

- acts within limits
- drafts for approval
- suggests
